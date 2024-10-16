﻿ADD_CUSTOM_TARGET(Packaging
        COMMENT "打包成果物和依赖.dll到${CMAKE_BUILD_TYPE}.zip中 并打开所在位置"
        COMMAND ${CMAKE_COMMAND} -E tar cfv ${PROJECT_SOURCE_DIR}/target/${CMAKE_BUILD_TYPE}.zip
        --format=zip ${CMAKE_INSTALL_PREFIX}
        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
        COMMAND start ${PROJECT_SOURCE_DIR}/target
        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)
