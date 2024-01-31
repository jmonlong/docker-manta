Docker image for the forked version of [Manta](https://github.com/Illumina/manta) that works when alignments end with indels. 

This happen, for example, when a BAM is realigned with ABRA. The issues were document in some issues (e.g. [#137](https://github.com/Illumina/manta/issues/137), and [#184](https://github.com/Illumina/manta/issues/184)). A [Pull Request to solve this issue](https://github.com/Illumina/manta/pull/288) was proposed but is not going to be merged as the official repo is archived.

This is to provide a Docker image for this version.
