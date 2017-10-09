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

.PHONY: test-early
test-early:
	python DQL.py --mode test --weights ./Weights/dqn_Breakout-v0_weights_600000.h5f

.PHONY: test-middle
test-middle:
	python DQL.py --mode test --weights ./Weights/dqn_Breakout-v0_weights_2400000.h5f

.PHONY: test-late
test-late:
	python DQL.py --mode test --weights ./Weights/dqn_Breakout-v0_weights_5850000.h5f


