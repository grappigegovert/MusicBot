from youtube_dl.postprocessor.common import PostProcessor

class OutputFilenamePP(PostProcessor):
    def __init__(self):
        super(OutputFilenamePP, self).__init__()

    def run(self, info):
        info['outputfilename'][0] = info['filepath']
        return [], info