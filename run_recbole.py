# @Time   : 2020/7/20
# @Author : Shanlei Mu
# @Email  : slmu@ruc.edu.cn

# UPDATE
# @Time   : 2022/7/8, 2020/10/3, 2020/10/1
# @Author : Zhen Tian, Yupeng Hou, Zihan Lin
# @Email  : chenyuwuxinn@gmail.com, houyupeng@ruc.edu.cn, zhlin@ruc.edu.cn

import argparse
from ast import arg

from recbole.quick_start import run_recbole, run_recboles

if __name__ == "__main__":
    parameter_dict = {
        'train_neg_sample_args': None,
        'encoding_block': 'concat_two_branch_separate_linear',
        'MAX_ITEM_LIST_LENGTH':10,
        # 'last_k':2,
        # 'seed':214,
        # 'attention_constrain':'value',
        # 'gpu_id':3,
        # 'attribute_predictor':'not',
        # 'attribute_hidden_size':"[256]",
        # 'fusion_type':'gate',
        # 'seed':212,
        # 'n_layers':4,
        # 'n_heads':1
    }
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", "-m", type=str, default="SASRec", help="name of models")
    parser.add_argument(
        "--dataset", "-d", type=str, default="Amazon_Beauty", help="name of datasets"
    )
    parser.add_argument("--config_files", type=str, default='configs/Amazon_Beauty_BaseRec.yaml', help="config files")
    parser.add_argument(
        "--nproc", type=int, default=1, help="the number of process in this group"
    )
    parser.add_argument(
        "--ip", type=str, default="localhost", help="the ip of master node"
    )
    parser.add_argument(
        "--port", type=str, default="5678", help="the port of master node"
    )
    parser.add_argument(
        "--world_size", type=int, default=-1, help="total number of jobs"
    )
    parser.add_argument(
        "--group_offset",
        type=int,
        default=0,
        help="the global rank offset of this group",
    )

    args, _ = parser.parse_known_args()

    config_file_list = (
        args.config_files.strip().split(" ") if args.config_files else None
    )

    if args.nproc == 1 and args.world_size <= 0:
        run_recbole(
            model=args.model, dataset=args.dataset, config_file_list=config_file_list,config_dict=parameter_dict
        )
    else:
        if args.world_size == -1:
            args.world_size = args.nproc
        import torch.multiprocessing as mp

        mp.spawn(
            run_recboles,
            args=(
                args.model,
                args.dataset,
                config_file_list,
                args.ip,
                args.port,
                args.world_size,
                args.nproc,
                args.group_offset,
            ),
            nprocs=args.nproc,
        )
