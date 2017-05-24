.class public Lcom/lenovo/scg/camera/smartengine/SceneFeature;
.super Ljava/lang/Object;
.source "SceneFeature.java"


# static fields
.field public static alphaVector:[D

.field public static dirVector:[I

.field public static indxVector:[I

.field public static thldVector:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x96

    .line 5
    const-string v0, "ivc_lightscenedetection_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->alphaVector:[D

    .line 16
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->indxVector:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->dirVector:[I

    .line 29
    new-array v0, v1, [D

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->thldVector:[D

    return-void

    .line 10
    :array_0
    .array-data 8
        0x3feeb0d73860999eL    # 0.959087
        0x3fe84c1871e6cd29L    # 0.759289
        0x3fdcdb48909289dbL    # 0.450884
        0x3fdadcc20d5629d8L    # 0.419724
        0x3fe0966e008e9b39L    # 0.518363
        0x3fd404ab606b7aa2L    # 0.312785
        0x3fd4d1d8a5482385L    # 0.325308
        0x3fd101bc98a222d5L    # 0.265731
        0x3fd3df0d413122b8L    # 0.310489
        0x3fd404d983947497L    # 0.312796
        0x3fd3a88effe2a3cfL    # 0.307163
        0x3fd04da9003eea21L    # 0.25474
        0x3fcdccc037931444L    # 0.232811
        0x3fcb551d68c692f7L    # 0.213535
        0x3fce357a355043e5L    # 0.236007
        0x3fd19207d4e09785L    # 0.274538
        0x3fd2c1e7967caea7L    # 0.293085
        0x3fca372606fac604L    # 0.204808
        0x3fceb3bb83cf2cf9L    # 0.23986
        0x3fcf513f8db48909L    # 0.244667
        0x3fd0d1cc100e6afdL    # 0.262805
        0x3fccff64cf8d716dL    # 0.226544
        0x3fccaa9f7b5aea31L    # 0.223957
        0x3fc96f8f041461b7L    # 0.198717
        0x3fc2afe60c38f367L    # 0.145993
        0x3fc4b93469941850L    # 0.161902
        0x3fd09973d9ec7000L    # 0.259366
        0x3fcb1c64ba94bbe4L    # 0.211804
        0x3fc9e42e12620254L    # 0.202276
        0x3fc220791c4b9021L    # 0.141616
        0x3fc6f6f8f041461bL    # 0.179412
        0x3fc7bc5de9c0229aL    # 0.185436
        0x3fc4642bf9830e3dL    # 0.159307
        0x3fc6cfa69be09bb7L    # 0.178212
        0x3fc65119ce075f70L    # 0.17435
        0x3fc4e49f51697f20L    # 0.163227
        0x3fc4c2efd438d1d9L    # 0.162199
        0x3fc42f72b4528284L    # 0.157698
        0x3fc1f8982cb20fb2L    # 0.140399
        0x3fc374b407032980L    # 0.151999
        0x3fc30ca1cef240fbL    # 0.148823
        0x3fc7bb05faebc409L    # 0.185395
        0x3fc709f1f14983d8L    # 0.179991
        0x3fc32fec56d5cfabL    # 0.1499
        0x3fc2b8b69552e2fcL    # 0.146262
        0x3fc1c0fcb4f1e4b4L    # 0.138702
        0x3fc27c4199fe4367L    # 0.144417
        0x3fc2ab367a0f9097L    # 0.14585
        0x3fc3083558a76102L    # 0.148688
        0x3fc5bff04577d955L    # 0.16992
        0x3fe559578a2a90cdL    # 0.667156
        0x3fe2bb81b64e0547L    # 0.585389
        0x3fe0525460aa64c3L    # 0.51005
        0x3fdef22c01e68a0dL    # 0.483531
        0x3fd9d0edc3bd5992L    # 0.403377
        0x3fd85011904b3c3eL    # 0.379887
        0x3fd13d8e0008637cL    # 0.269382
        0x3fd4f5be5d9e40c8L    # 0.327499
        0x3fd49899bf5946c3L    # 0.321814
        0x3fd2c6f7a0b5ed8dL    # 0.293394
        0x3fd09f90539fba45L    # 0.259739
        0x3fcb01f31f46ed24L    # 0.210997
        0x3fcf9f1ae2da554cL    # 0.247043
        0x3fd219652bd3c361L    # 0.2828
        0x3fce0fe47991bc56L    # 0.23486
        0x3fcaadddf43c7d5fL    # 0.208431
        0x3fc7151e75360d02L    # 0.180332
        0x3fc8d612c6ac215cL    # 0.194033
        0x3fcd4395810624ddL    # 0.228625
        0x3fc45a14488c60ccL    # 0.158999
        0x3fc525460aa64c30L    # 0.1652
        0x3fc620c49ba5e354L    # 0.172875
        0x3fc6a0232096787dL    # 0.176762
        0x3fc6be61cffeb075L    # 0.177685
        0x3fc7adb8348f53c5L    # 0.184989
        0x3fc33a9b06812381L    # 0.150226
        0x3fc51f687b139c95L    # 0.165021
        0x3fc68cac4b4d056cL    # 0.176168
        0x3fc23d0bfa0945faL    # 0.142488
        0x3fc2d3e920c069e8L    # 0.147092
        0x3fc34256bca5375dL    # 0.150462
        0x3fbe57a786c22681L    # 0.118525
        0x3fc11ceaf251c194L    # 0.133695
        0x3fc034b0e1b4bb5eL    # 0.126608
        0x3fc27967caea747eL    # 0.14433
        0x3fbfea704bc27632L    # 0.124671
        0x3fbbd50225742dcfL    # 0.108719
        0x3fbd17e77d523b36L    # 0.113646
        0x3fc26f0cfe154435L    # 0.144014
        0x3fc17bd05af6c69bL    # 0.136591
        0x3fbdfd7a13c254a4L    # 0.117149
        0x3fc06fcdee34fc61L    # 0.128412
        0x3fbca6117720c8cdL    # 0.111909
        0x3fbdff1d81f10668L    # 0.117174
        0x3fbf76b3bb83cf2dL    # 0.122905
        0x3fbc1d8e86402081L    # 0.109826
        0x3fba0685553ef6b6L    # 0.101662
        0x3fbb8ef34d6a161eL    # 0.10765
        0x3fba89fc6da44849L    # 0.103668
        0x3fbd6c0d6f544bb2L    # 0.11493
        0x3ff8d656eefa1e3fL    # 1.552329
        0x3fe3c9363f572de4L    # 0.618312
        0x3fdfbbbe878fabdaL    # 0.495834
        0x3fe40791c4b90215L    # 0.625924
        0x3fd65a294141e9afL    # 0.349253
        0x3fd5b8c32a8c9b84L    # 0.339402
        0x3fd9b6fe2e6ea854L    # 0.401794
        0x3fd46f9767903212L    # 0.319311
        0x3fd308bfc2224edfL    # 0.297409
        0x3fd258dde7a743a6L    # 0.286674
        0x3fd1e45803cd141aL    # 0.279562
        0x3fcfc714fce746ccL    # 0.248263
        0x3fc86afcce1c5825L    # 0.190765
        0x3fd298aa8650e779L    # 0.290568
        0x3fcc04102ff8ec10L    # 0.218874
        0x3fcd54a7f8012dfdL    # 0.229146
        0x3fcceb9a176ddacfL    # 0.22594
        0x3fce6d5065732160L    # 0.237711
        0x3fc51fc4c165907eL    # 0.165032
        0x3fc59c065b63d3e5L    # 0.168824
        0x3fc9368ad6883772L    # 0.196977
        0x3fca1294573a7979L    # 0.203692
        0x3fcafd00713f077dL    # 0.210846
        0x3fc8ad57bc7f77afL    # 0.19279
        0x3fd03e5753a3ec03L    # 0.253805
        0x3fc1c0e38a7e73a3L    # 0.138699
        0x3fc9d3b29a1b9f99L    # 0.201773
        0x3fc7852f7f498c3bL    # 0.183752
        0x3fc8a8f3a9b06812L    # 0.192656
        0x3fc89ea140570825L    # 0.192341
        0x3fc543526527a205L    # 0.166117
        0x3fc48fe260b2c83fL    # 0.160641
        0x3fc4660a2014727eL    # 0.159364
        0x3fc6806af46aa088L    # 0.175794
        0x3fc3337eb28d8666L    # 0.150009
        0x3fc3336deb95e5b0L    # 0.150007
        0x3fc1f080303c07eeL    # 0.140152
        0x3fc6c5da6a444178L    # 0.177913
        0x3fc2020817fc7608L    # 0.140687
        0x3fbed2999567dbb1L    # 0.120401
        0x3fc5698fe69270b0L    # 0.167284
        0x3fc42b6284599674L    # 0.157574
        0x3fc4780fdc1615ecL    # 0.159914
        0x3fc198b71b8aa002L    # 0.137473
        0x3fc0ee73e681a9b9L    # 0.132277
        0x3fc0155d5f56a7adL    # 0.125652
        0x3fbf4cb1897a67a5L    # 0.122264
        0x3fc290c4dec1c1d7L    # 0.145043
        0x3fc25974e65bea0cL    # 0.143355
        0x3fc29d8409e55c10L    # 0.145432
    .end array-data

    .line 16
    :array_1
    .array-data 4
        0x1
        0x2
        0xb
        0x1
        0x2
        0x1
        0xa
        0x6
        0x14
        0x15
        0x14
        0x4
        0x9
        0x2
        0x15
        0x8
        0x5
        0x13
        0x1
        0x17
        0x2
        0x1
        0xb
        0x2
        0x16
        0x15
        0x1
        0x4
        0xb
        0x16
        0x2
        0x6
        0x17
        0x0
        0x14
        0x16
        0x8
        0x5
        0x12
        0x11
        0x15
        0x1
        0x5
        0x7
        0x2
        0x14
        0x0
        0x12
        0xa
        0x1
        0x17
        0xb
        0x6
        0x3
        0x17
        0xa
        0x8
        0xa
        0x17
        0x4
        0xb
        0x17
        0x9
        0xc
        0x4
        0x1
        0x17
        0x4
        0x4
        0x17
        0x3
        0xe
        0x8
        0xa
        0x2
        0x4
        0x17
        0x9
        0x17
        0x7
        0xc
        0xa
        0x10
        0xe
        0xc
        0x7
        0x8
        0x1
        0x0
        0x8
        0xe
        0xb
        0x0
        0x1
        0x6
        0x5
        0xc
        0xd
        0x0
        0x3
        0x1
        0x4
        0x8
        0xb
        0x8
        0x8
        0x1
        0x1
        0x1
        0x17
        0xe
        0x3
        0x8
        0x17
        0x8
        0xd
        0x1
        0xa
        0x6
        0xd
        0x9
        0x1
        0x0
        0x10
        0x17
        0x3
        0x8
        0x0
        0xa
        0x17
        0xd
        0xc
        0x8
        0x1
        0x1
        0x7
        0x1
        0x17
        0xe
        0xe
        0x0
        0x8
        0x2
        0x2
        0xb
        0xe
        0x0
        0x17
        0x1
        0x0
    .end array-data

    .line 23
    :array_2
    .array-data 4
        0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        -0x1
        -0x1
        0x1
        -0x1
        0x1
        0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        0x1
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x1
        0x1
        -0x1
        0x1
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        0x1
        0x1
        -0x1
        -0x1
        0x1
        0x1
        -0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        0x1
        -0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        -0x1
        -0x1
        0x1
        -0x1
        0x1
        -0x1
        -0x1
        0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x1
        -0x1
        0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x1
        -0x1
        0x1
        0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        0x1
        0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 29
    :array_3
    .array-data 8
        0x3fe23d70a3d70a3dL    # 0.57
        0x3fceb851eb851eb8L    # 0.24
        0x3fa999999999999aL    # 0.05
        0x3fdd70a3d70a3d71L    # 0.46
        0x3fd7ae147ae147aeL    # 0.37
        0x3fd851eb851eb852L    # 0.38
        0x3fa47ae147ae147bL    # 0.04
        0x3fd47ae147ae147bL    # 0.32
        0x3fe199999999999aL    # 0.55
        0x3fceb851eb851eb8L    # 0.24
        0x3fd6666666666666L    # 0.35
        0x3fda3d70a3d70a3dL    # 0.41
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fceb851eb851eb8L    # 0.24
        0x3fe6666666666666L    # 0.7
        0x3feeb851eb851eb8L    # 0.96
        0x3fb1eb851eb851ecL    # 0.07
        0x3fd0a3d70a3d70a4L    # 0.26
        0x3fe23d70a3d70a3dL    # 0.57
        0x3fd51eb851eb851fL    # 0.33
        0x3fc47ae147ae147bL    # 0.16
        0x3fdeb851eb851eb8L    # 0.48
        0x3f947ae147ae147bL    # 0.02
        0x3fceb851eb851eb8L    # 0.24
        0x3fc999999999999aL    # 0.2
        0x3fe6666666666666L    # 0.7
        0x3fd1eb851eb851ecL    # 0.28
        0x3fe5c28f5c28f5c3L    # 0.68
        0x3faeb851eb851eb8L    # 0.06
        0x3fb999999999999aL    # 0.1
        0x3fd7ae147ae147aeL    # 0.37
        0x3fe051eb851eb852L    # 0.51
        0x3fdc28f5c28f5c29L    # 0.44
        0x3fd851eb851eb852L    # 0.38
        0x3fd51eb851eb851fL    # 0.33
        0x3fcae147ae147ae1L    # 0.21
        0x3fe1eb851eb851ecL    # 0.56
        0x3fdc28f5c28f5c29L    # 0.44
        0x3fe199999999999aL    # 0.55
        0x3fe3851eb851eb85L    # 0.61
        0x3fe6666666666666L    # 0.7
        0x3fd1eb851eb851ecL    # 0.28
        0x3fb1eb851eb851ecL    # 0.07
        0x3fdc28f5c28f5c29L    # 0.44
        0x3fc47ae147ae147bL    # 0.16
        0x3fe0a3d70a3d70a4L    # 0.52
        0x3fd8f5c28f5c28f6L    # 0.39
        0x3fe199999999999aL    # 0.55
        0x3fb47ae147ae147bL    # 0.08
        0x3fe8000000000000L    # 0.75
        0x3fea8f5c28f5c28fL    # 0.83
        0x3faeb851eb851eb8L    # 0.06
        0x3fd0a3d70a3d70a4L    # 0.26
        0x3fd51eb851eb851fL    # 0.33
        0x3fee666666666666L    # 0.95
        0x3fa47ae147ae147bL    # 0.04
        0x3fed1eb851eb851fL    # 0.91
        0x3fb1eb851eb851ecL    # 0.07
        0x3fe6666666666666L    # 0.7
        0x3f847ae147ae147bL    # 0.01
        0x3f947ae147ae147bL    # 0.02
        0x3fefae147ae147aeL    # 0.99
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fd51eb851eb851fL    # 0.33
        0x3fea3d70a3d70a3dL    # 0.82
        0x3fc47ae147ae147bL    # 0.16
        0x3fe70a3d70a3d70aL    # 0.72
        0x3fea3d70a3d70a3dL    # 0.82
        0x3fe0a3d70a3d70a4L    # 0.52
        0x3fef0a3d70a3d70aL    # 0.97
        0x3fd51eb851eb851fL    # 0.33
        0x3fbc28f5c28f5c29L    # 0.11
        0x3fe999999999999aL    # 0.8
        0x3fbc28f5c28f5c29L    # 0.11
        0x3fbc28f5c28f5c29L    # 0.11
        0x3fea3d70a3d70a3dL    # 0.82
        0x3fe428f5c28f5c29L    # 0.63
        0x3fc851eb851eb852L    # 0.19
        0x3feccccccccccccdL    # 0.9
        0x3fe2e147ae147ae1L    # 0.59
        0x3fceb851eb851eb8L    # 0.24
        0x3faeb851eb851eb8L    # 0.06
        0x3fd3d70a3d70a3d7L    # 0.31
        0x3fe3851eb851eb85L    # 0.61
        0x3fdb851eb851eb85L    # 0.43
        0x3fe2e147ae147ae1L    # 0.59
        0x3fed70a3d70a3d71L    # 0.92
        0x3fc47ae147ae147bL    # 0.16
        0x0
        0x3fe570a3d70a3d71L    # 0.67
        0x3fe8f5c28f5c28f6L    # 0.78
        0x3f847ae147ae147bL    # 0.01
        0x0
        0x3fb70a3d70a3d70aL    # 0.09
        0x3fec28f5c28f5c29L    # 0.88
        0x3fb1eb851eb851ecL    # 0.07
        0x3fb47ae147ae147bL    # 0.08
        0x3fbeb851eb851eb8L    # 0.12
        0x3fd1eb851eb851ecL    # 0.28
        0x3fcae147ae147ae1L    # 0.21
        0x3fc3333333333333L    # 0.15
        0x3fe147ae147ae148L    # 0.54
        0x3feeb851eb851eb8L    # 0.96
        0x3f847ae147ae147bL    # 0.01
        0x3fec28f5c28f5c29L    # 0.88
        0x3ff0000000000000L    # 1.0
        0x3fc3333333333333L    # 0.15
        0x3fd1eb851eb851ecL    # 0.28
        0x3fb70a3d70a3d70aL    # 0.09
        0x3fefae147ae147aeL    # 0.99
        0x3fb70a3d70a3d70aL    # 0.09
        0x3fdccccccccccccdL    # 0.45
        0x3fec28f5c28f5c29L    # 0.88
        0x3fec7ae147ae147bL    # 0.89
        0x3fef5c28f5c28f5cL    # 0.98
        0x3f947ae147ae147bL    # 0.02
        0x3fc1eb851eb851ecL    # 0.14
        0x3f9eb851eb851eb8L    # 0.03
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fb47ae147ae147bL    # 0.08
        0x3fc851eb851eb852L    # 0.19
        0x3fd70a3d70a3d70aL    # 0.36
        0x3f947ae147ae147bL    # 0.02
        0x3fbeb851eb851eb8L    # 0.12
        0x3fefae147ae147aeL    # 0.99
        0x3fe3333333333333L    # 0.6
        0x3fec28f5c28f5c29L    # 0.88
        0x3f947ae147ae147bL    # 0.02
        0x3fa999999999999aL    # 0.05
        0x3fed1eb851eb851fL    # 0.91
        0x3fbeb851eb851eb8L    # 0.12
        0x3fc47ae147ae147bL    # 0.16
        0x3fee666666666666L    # 0.95
        0x3fb70a3d70a3d70aL    # 0.09
        0x3fc3333333333333L    # 0.15
        0x3feeb851eb851eb8L    # 0.96
        0x3fdccccccccccccdL    # 0.45
        0x3fef0a3d70a3d70aL    # 0.97
        0x3fa999999999999aL    # 0.05
        0x3f947ae147ae147bL    # 0.02
        0x3f947ae147ae147bL    # 0.02
        0x3fec28f5c28f5c29L    # 0.88
        0x3fceb851eb851eb8L    # 0.24
        0x3fc47ae147ae147bL    # 0.16
        0x3f947ae147ae147bL    # 0.02
        0x3f947ae147ae147bL    # 0.02
        0x3fb1eb851eb851ecL    # 0.07
        0x3feccccccccccccdL    # 0.9
        0x3fdccccccccccccdL    # 0.45
        0x3f947ae147ae147bL    # 0.02
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native sceneDegreeComputation([F[D[I[I[DII[F)V
.end method

.method public static native sceneFeatureExtraction([F[F[F[F[F[F)V
.end method
