#!/bin/bash
perl -MList::Util=shuffle -e 'print shuffle(<STDIN>);'
