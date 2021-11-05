ALLJOBS=$1

if [ "$ALLJOBS" = "true" ]; then
    cat ./configTemplate/jobs >> generated-config.yml

    if [ "$ALLJOBS" = "true" ]; then
        cat a/jobs.yml >> generated-config.yml;
        cat b/jobs.yml >> generated-config.yml;
    fi;

    cat ./configTemplate/workflows >> generated-config.yml

    if [ "$ALLJOBS" = "true" ]; then
        cat a/workflows.yml >> generated-config.yml;
        cat b/workflows.yml >> generated-config.yml;
    fi;
else
    cat ./configTemplate/default.yml >> generated-config.yml;
fi;