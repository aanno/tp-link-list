# Machine learning

* https://christophm.github.io/interpretable-ml-book/
* https://medium.com/stacksharewithme/2020-ai-ml-opensource-45b3ca809133 : Overview excellent open source
* https://www.spektrum.de/news/wie-gauss-helfen-kann-das-geheimnis-des-deep-learning-zu-lueften/1937500 - warum funktionieren NN?

## Important Meta Sides

* https://huggingface.co/ - github for AI
  + https://huggingface.co/models
  + https://huggingface.co/datasets

## SaaS

* [eden AI](https://www.edenai.co/) commercial, full-stack AI platform for developers to efficiently create, test, and deploy AI

## Very high level frameworks

* https://opensource.google/projects/dopamine : reinforcement framework
* https://github.com/google/mediapipe/

## Real life deployments

* [scalable forecasting](https://doordash.engineering/2021/08/31/increasing-operational-efficiency-with-scalable-forecasting/)

## Fun

* deep dream
  + https://hackernoon.com/dl06-deepdream-with-code-5f735052e21f
  + https://github.com/eriklindernoren/PyTorch-Deep-Dream
  + https://github.com/juanigp/Pytorch-Deep-Dream

## GPU

* https://docs.anaconda.com/anaconda/user-guide/tasks/gpu-packages/
* https://stsievert.com/blog/2016/07/01/numpy-gpu/
  + https://cupy.chainer.org/ numpy replacement

### GPU performance monitoring

* `nvidia-smi`
* https://www.linuxuprising.com/2019/06/2-tools-for-monitoring-nvidia-gpus-on.html
* https://github.com/congard/nvidia-system-monitor-qt
* https://github.com/Syllo/nvtop
* https://github.com/wookayin/gpustat

## meta search engines

* [find commercial AI services](https://theresanaiforthat.com/)

## Models

* https://modelzoo.co
  + https://modelzoo.co/model/fastphotostyle
    - https://github.com/NVIDIA/FastPhotoStyle
* https://towardsdatascience.com/how-to-train-an-image-classifier-in-pytorch-and-use-it-to-perform-basic-inference-on-single-images-99465a1e9bf5?gi=e21d41748c29
* [dynare - macroeconomics modeling for all](https://www.dynare.org/)
* [nvidia NIM](https://developer.nvidia.com/blog/access-to-nvidia-nim-now-available-free-to-developer-program-members/) try many models in pre-built containers

## use models locally

* https://linuxnews.de/alpaca-ki-modelle-offline-lokal-betreiben/
  + [alpaca](https://github.com/Jeffser/Alpaca)
  + https://linuxtldr.com/setup-ollama-and-open-webui-on-linux/ The simplest way to run Alpaca (and other LLaMA-based local LLMs) on your own computer 
* [alpaca electron](https://github.com/ItsPi3141/alpaca-electron)
* [ollama](https://github.com/ollama/ollama) alpaca is based on ollama
  + https://ollama.com/

### language models

* [gpt4all](https://gpt4all.io/index.html) free-to-use, locally running, privacy-aware chatbot. No GPU or internet required, featured!
  + [gpt4all datalake](https://github.com/nomic-ai/gpt4all-datalake) ingest, organize and efficiently store all data contributions made to gpt4all
* https://www.heise.de/news/Open-Source-OpenAI-veroeffentlicht-automatisches-Spracherkennungssystem-Whisper-7273104.html
* https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/models modells available on azure (e.g. GPT-4)
* https://openai.com/blog/introducing-gpts create your own version of GPT

#### AI web search

* [perplexity](https://www.perplexity.ai/search/was-ist-perplexity-ai-c9s4_gQhSa2K8FPgHNWqiA)
* [searchGPT](https://en.m.wikipedia.org/wiki/SearchGPT)
  + https://openai.com/index/searchgpt-prototype/
* [arc search](https://arc.net/blog/arc-search)

#### language models for programmers

* https://sourcegraph.com/
* [jetbrains](https://blog.jetbrains.com/ai/2024/08/jetbrains-ai-assistant-2024-2/)
  + [full line code completion](https://blog.jetbrains.com/blog/2024/04/04/full-line-code-completion-in-jetbrains-ides-all-you-need-to-know/)
  + [jetbrains ai](https://www.jetbrains.com/ai/)
* [amazon q](https://aws.amazon.com/de/q/)

#### language identification

* https://stackoverflow.com/questions/58319996/commands-to-predict-the-language-with-fasttext-in-linux
  + https://fasttext.cc/blog/2017/10/02/blog-post.html
  + https://github.com/facebookresearch/fastText/
* https://softwarerecs.stackexchange.com/questions/50173/language-detection-at-shell-command
  + https://tika.apache.org/

## Pytorch

* https://pytorch.org/docs/stable/notes/faq.html (out of memory)
* https://github.com/pytorch/examples

### Pytorch models

* https://www.learnopencv.com/pytorch-for-beginners-image-classification-using-pre-trained-models/
* https://pytorch.org/docs/stable/torchvision/models.html
  + https://pytorch.org/hub/pytorch_vision_vgg/

### AutoML

* https://github.com/mindsdb/mindsdb (based on pytorch)
* https://github.com/tensorflow/adanet (based on tensorflow)
* https://github.com/automl/auto-sklearn (based on scikit)
* https://github.com/keras-team/autokeras (based on keras)
* https://github.com/microsoft/nni
* https://github.com/FeatureLabs/featuretools (for feature extraction)
* https://github.com/ray-project/ray (distributor)
* https://github.com/quark0/darts (automl algorithm)
* https://github.com/salesforce/TransmogrifAI
  + https://engineering.salesforce.com/open-sourcing-transmogrifai-4e5d0e098da2?gi=1691eec59f35

## Stan

state-of-the-art platform for statistical modeling and high-performance statistical computation

* https://mc-stan.org/
  + https://www.cibotechnologies.com/blog/scalastan-and-evilplot-bayesian-statistics-meets-combinator-based-visualization/

## Blogs

* https://ai.googleblog.com/

## More Libs

* https://mxnet.apache.org/ (multi-language)

## Classification

### Naive Bayes

* https://towardsdatascience.com/all-about-naive-bayes-8e13cef044cf?gi=39b3d66eb009
* https://scikit-learn.org/stable/modules/naive_bayes.html

## Domain adaption and transfer learning

* https://en.wikipedia.org/wiki/Domain_adaptation
* https://en.wikipedia.org/wiki/Transfer_learning

### Implementations

* [salad - domain adaption library](https://domainadaptation.org/)
  + https://github.com/domainadaptation/salad

## Natural language processing

* http://www.scalanlp.org/ scala-based
* [Hugging Face](https://huggingface.co/) for jax, pytorch, tensorflow
  + [Hugging Face Course](https://huggingface.co/course/chapter1/1)
* [doccano - text annotions for humans](https://doccano.herokuapp.com/de)
  + https://github.com/doccano/doccano

### mail and text classification

* https://towardsdatascience.com/how-i-used-machine-learning-to-classify-emails-and-turn-them-into-insights-efed37c1e66
* https://medium.com/dataseries/email-classification-into-categories-different-approaches-using-nlp-8bc65cf2f12f
* https://monkeylearn.com/blog/text-classification-apis/

### Chatbots

* https://medevel.com/open-source-chatbot-frameworks/
* https://thirdeyedata.io/top-chatbot-development-frameworks-you-should-know-exploring-open-source-solutions-part-2/

#### Implementations

* https://botpress.io/
* https://rasa.com/
  + https://github.com/RasaHQ/rasa

## Text to Image

* https://t3n.de/news/comic-ki-dreambooth-avatar-missbrauch-1511452/
* https://dreambooth.github.io/
  + https://github.com/XavierXiao/Dreambooth-Stable-Diffusion

## Pre-trained individual images

* https://huggingface.co/ogkalu/Comic-Diffusion

## Media

* https://www.br.de/extra/br-data/index.html
* [Deutsches Forschungszentrum für KI](https://www.dfki.de/web)
