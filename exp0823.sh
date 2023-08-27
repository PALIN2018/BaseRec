# BaseRec-dropout_prob=0.4
model=BaseRec
seed=212
dropout_prob=0.4
MAX_ITEM_LIST_LENGTH=50
encoding_block='emb+linear+ap+add(linear)+LN'
checkpoint_dir=saved/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}
nohup python run_recbole.py --MAX_ITEM_LIST_LENGTH=${MAX_ITEM_LIST_LENGTH} --log_wandb=True --run_name=${encoding_block}_${MAX_ITEM_LIST_LENGTH} --checkpoint_dir=${checkpoint_dir} --model=${model} --seed=${seed} --encoding_block=${encoding_block} --dropout_prob=${dropout_prob} >log/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}.log 2>&1 &
encoding_block='emb+linear+ap+add(emb)+LN'
checkpoint_dir=saved/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}
nohup python run_recbole.py --MAX_ITEM_LIST_LENGTH=${MAX_ITEM_LIST_LENGTH} --log_wandb=True --run_name=${encoding_block}_${MAX_ITEM_LIST_LENGTH} --checkpoint_dir=${checkpoint_dir} --model=${model} --seed=${seed} --encoding_block=${encoding_block} --dropout_prob=${dropout_prob} >log/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}.log 2>&1 &
encoding_block='emb+ap+linear+add(emb)+LN'
checkpoint_dir=saved/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}
nohup python run_recbole.py --MAX_ITEM_LIST_LENGTH=${MAX_ITEM_LIST_LENGTH} --log_wandb=True --run_name=${encoding_block}_${MAX_ITEM_LIST_LENGTH} --checkpoint_dir=${checkpoint_dir} --model=${model} --seed=${seed} --encoding_block=${encoding_block} --dropout_prob=${dropout_prob} >log/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}.log 2>&1 &
encoding_block='emb+ap+linear+add(ap)+LN'
checkpoint_dir=saved/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}
nohup python run_recbole.py --MAX_ITEM_LIST_LENGTH=${MAX_ITEM_LIST_LENGTH} --log_wandb=True --run_name=${encoding_block}_${MAX_ITEM_LIST_LENGTH} --checkpoint_dir=${checkpoint_dir} --model=${model} --seed=${seed} --encoding_block=${encoding_block} --dropout_prob=${dropout_prob} >log/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}.log 2>&1 &
encoding_block='sum_two_branch_separate_linear'
checkpoint_dir=saved/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}
nohup python run_recbole.py --MAX_ITEM_LIST_LENGTH=${MAX_ITEM_LIST_LENGTH} --log_wandb=True --run_name=${encoding_block}_${MAX_ITEM_LIST_LENGTH} --checkpoint_dir=${checkpoint_dir} --model=${model} --seed=${seed} --encoding_block=${encoding_block} --dropout_prob=${dropout_prob} >log/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}.log 2>&1 &
encoding_block='sum_two_branch_share_linear'
checkpoint_dir=saved/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}
nohup python run_recbole.py --MAX_ITEM_LIST_LENGTH=${MAX_ITEM_LIST_LENGTH} --log_wandb=True --run_name=${encoding_block}_${MAX_ITEM_LIST_LENGTH} --checkpoint_dir=${checkpoint_dir} --model=${model} --seed=${seed} --encoding_block=${encoding_block} --dropout_prob=${dropout_prob} >log/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}.log 2>&1 &
encoding_block='concat_two_branch_separate_linear'
checkpoint_dir=saved/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}
nohup python run_recbole.py --MAX_ITEM_LIST_LENGTH=${MAX_ITEM_LIST_LENGTH} --log_wandb=True --run_name=${encoding_block}_${MAX_ITEM_LIST_LENGTH} --checkpoint_dir=${checkpoint_dir} --model=${model} --seed=${seed} --encoding_block=${encoding_block} --dropout_prob=${dropout_prob} >log/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}.log 2>&1 &
encoding_block='concat_two_branch_share_linear'
checkpoint_dir=saved/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}
nohup python run_recbole.py --MAX_ITEM_LIST_LENGTH=${MAX_ITEM_LIST_LENGTH} --log_wandb=True --run_name=${encoding_block}_${MAX_ITEM_LIST_LENGTH} --checkpoint_dir=${checkpoint_dir} --model=${model} --seed=${seed} --encoding_block=${encoding_block} --dropout_prob=${dropout_prob} >log/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}.log 2>&1 &
encoding_block='sasrec'
model=SASRec
checkpoint_dir=saved/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}
nohup python run_recbole.py --MAX_ITEM_LIST_LENGTH=${MAX_ITEM_LIST_LENGTH} --log_wandb=True --run_name=${encoding_block}_${MAX_ITEM_LIST_LENGTH} --checkpoint_dir=${checkpoint_dir} --model=${model} --seed=${seed} --encoding_block=${encoding_block} --dropout_prob=${dropout_prob} >log/${model}_${seed}_${encoding_block}_${dropout_prob}_${MAX_ITEM_LIST_LENGTH}.log 2>&1 &