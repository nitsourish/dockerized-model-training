# dockerized-model-training
model training and inference in docker container

### Firstly clone the repo by


```bash
    git clone git@github.com:nitsourish/dockerized-model-training.git
```  

### For training script in docker run

```bash
    sudo docker run nitsourish/docker-ml-model:latest python train.py
``` 
### the output would be exactly look like this

```bash
  Linux-5.19.0-38-generic-x86_64-with-glibc2.35
  Python 3.10.10 | packaged by conda-forge | (main, Mar 24 2023, 20:08:06) [GCC 11.3.0]
  NumPy 1.23.5
  SciPy 1.10.1
  /project/model_dir/MODEL_LDA.pkl
  /project/model_dir/MODEL_NN.pkl
  Shape of the training data
  (1300, 160)
  (1300,)
```

### For inference script in docker run

```bash
    sudo docker run nitsourish/docker-ml-model:latest python inference.py
``` 
### the output would be exactly look like this

```bash
  Pandas 2.0.0
  Linux-5.19.0-38-generic-x86_64-with-glibc2.35
  Python 3.10.10 | packaged by conda-forge | (main, Mar 24 2023, 20:08:06) [GCC 11.3.0]
  NumPy 1.23.5
  SciPy 1.10.1
  /project
  Shape of the test data
  (1300, 160)
  (1300,)
  /project/model_dir/MODEL_LDA.pkl
  LDA score and classification:
  0.6915384615384615
  NN score and classification:
  0.6615384615384615
```   
