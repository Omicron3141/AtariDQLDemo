.PHONY: install
install:
	apt-get install python-opengl
	pip install "gym[atari]" keras-rl tensorflow h5py

.PHONY: test
test:
	python DQL.py --mode test --weights ./Weights/dqn_Breakout-v0_weights_4550000.h5f

.PHONY: train
train:
	python DQL.py --mode train
