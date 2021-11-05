ALLJOBS=$1

if [ "$ALLJOBS" = "true" ]; then
    cat ./configTemplate/jobs >> metaconfig.yml

    if [ "$ALLJOBS" = "true" ]; then
        cat a/jobs.yml >> metaconfig.yml;
        cat b/jobs.yml >> metaconfig.yml;
    fi;

    cat ./configTemplate/workflows >> metaconfig.yml

    if [ "$ALLJOBS" = "true" ]; then
        cat a/workflows.yml >> metaconfig.yml;
        cat b/workflows.yml >> metaconfig.yml;
    fi;
else
    cat ./configTemplate/default.yml >> metaconfig.yml;
fi;