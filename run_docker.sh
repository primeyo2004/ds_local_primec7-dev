#Author: Jeune Prime Origines
#Description: Helper script
#!/bin/bash
docker run -ti -v  ~/projects:/home/prime/projects --user prime -w ~/projects/ local/primec7-dev
