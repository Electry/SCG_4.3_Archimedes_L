.class public Lcom/baidu/idl/lib/SceneUtils;
.super Ljava/lang/Object;
.source "SceneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/idl/lib/SceneUtils$SortByScore;
    }
.end annotation


# static fields
.field public static final SCENE_TEXT:[Ljava/lang/String;

.field private static mSceneClassification:Lcom/baidu/SceneClassification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 24
    const-string/jumbo v2, "\u5ba0\u7269"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u4eba\u50cf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u5ba4\u5916"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u98ce\u666f"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u98df\u7269"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 25
    const-string/jumbo v2, "\u690d\u7269"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u5ba4\u5185"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u667a\u80fd"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u5927\u96fe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u513f\u7ae5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 26
    const-string/jumbo v2, "\u6f14\u51fa"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u4e32\u4e32"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u96e8"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u6c34\u679c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u7cd5\u70b9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 27
    const-string/jumbo v2, "\u591c\u666f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u82b1"

    aput-object v2, v0, v1

    .line 23
    sput-object v0, Lcom/baidu/idl/lib/SceneUtils;->SCENE_TEXT:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cdnnScoreRGB([BIIZI)Ljava/util/ArrayList;
    .locals 10
    .param p0, "mData"    # [B
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "front"    # Z
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/idl/lib/entity/SceneEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x38

    .line 77
    const-string v0, "idl_scene"

    invoke-static {v0}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 79
    const/4 v7, 0x0

    .line 81
    .local v7, "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    invoke-static {}, Lcom/baidu/idl/lib/utils/IDLInitializer;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IDLInitializer is not init"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    if-nez p0, :cond_1

    .line 86
    const-string v0, "IDLSDK"

    const-string v1, "mData is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 115
    .end local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .local v8, "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    :goto_0
    return-object v8

    .line 90
    .end local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    :cond_1
    if-nez p1, :cond_2

    .line 91
    const-string v0, "IDLSDK"

    const-string/jumbo v1, "previewWidth size error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 92
    .end local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    goto :goto_0

    .line 95
    .end local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    :cond_2
    if-nez p2, :cond_3

    .line 96
    const-string v0, "IDLSDK"

    const-string/jumbo v1, "previewHeight size error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 97
    .end local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    goto :goto_0

    .line 100
    .end local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    :cond_3
    sget-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    if-nez v0, :cond_4

    move-object v8, v7

    .line 101
    .end local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    goto :goto_0

    .line 104
    .end local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    :cond_4
    sget-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    invoke-virtual {v0}, Lcom/baidu/SceneClassification;->isSupportedNeon()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v8, v7

    .line 105
    .end local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    goto :goto_0

    .line 108
    .end local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    :cond_5
    const/16 v0, 0x24c0

    new-array v3, v0, [B

    .line 110
    .local v3, "imageData":[B
    invoke-static {p3, p4}, Lcom/baidu/idl/lib/SceneUtils;->getYUVDirection(ZI)I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    .line 109
    invoke-static/range {v0 .. v6}, Lcn/jingling/lib/filters/CMTProcessor;->yuv2rgbResize([BII[BIII)V

    .line 111
    sget-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    invoke-virtual {v0, v3}, Lcom/baidu/SceneClassification;->cdnnScoreRGB([B)[F

    move-result-object v9

    .line 113
    .local v9, "sceneScores":[F
    invoke-static {v9}, Lcom/baidu/idl/lib/SceneUtils;->sortScene([F)Ljava/util/ArrayList;

    move-result-object v7

    move-object v8, v7

    .line 115
    .end local v7    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    .restart local v8    # "mSceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    goto :goto_0
.end method

.method private static getYUVDirection(ZI)I
    .locals 2
    .param p0, "front"    # Z
    .param p1, "direction"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "result":I
    if-eqz p0, :cond_1

    .line 135
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    .line 136
    move v0, p1

    .line 144
    :goto_0
    return v0

    .line 138
    :cond_0
    rsub-int/lit8 v1, p1, 0x4

    rem-int/lit8 v0, v1, 0x4

    .line 140
    goto :goto_0

    .line 141
    :cond_1
    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v0, v1, 0x4

    goto :goto_0
.end method

.method public static initSceneClassify(Landroid/content/Context;)V
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 41
    const-string v0, "IDLSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSceneClassify error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/baidu/SceneClassification;

    invoke-direct {v0}, Lcom/baidu/SceneClassification;-><init>()V

    sput-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    .line 46
    sget-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    invoke-virtual {v0}, Lcom/baidu/SceneClassification;->isSupportedNeon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/SceneClassification;->sceneModeInit(Landroid/content/res/AssetManager;)V

    goto :goto_0
.end method

.method public static releaseSceneClassification()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->dataCommit()V

    .line 60
    sget-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    invoke-virtual {v0}, Lcom/baidu/SceneClassification;->sceneModeRelease()V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/idl/lib/SceneUtils;->mSceneClassification:Lcom/baidu/SceneClassification;

    .line 64
    :cond_0
    return-void
.end method

.method private static sortScene([F)Ljava/util/ArrayList;
    .locals 5
    .param p0, "sceneScores"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/idl/lib/entity/SceneEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "scenes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/baidu/idl/lib/entity/SceneEntity;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 128
    new-instance v3, Lcom/baidu/idl/lib/SceneUtils$SortByScore;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/baidu/idl/lib/SceneUtils$SortByScore;-><init>(Lcom/baidu/idl/lib/SceneUtils$SortByScore;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    return-object v2

    .line 122
    :cond_0
    new-instance v1, Lcom/baidu/idl/lib/entity/SceneEntity;

    invoke-direct {v1}, Lcom/baidu/idl/lib/entity/SceneEntity;-><init>()V

    .line 123
    .local v1, "mSceneEntity":Lcom/baidu/idl/lib/entity/SceneEntity;
    aget v3, p0, v0

    iput v3, v1, Lcom/baidu/idl/lib/entity/SceneEntity;->sceneScores:F

    .line 124
    sget-object v3, Lcom/baidu/idl/lib/SceneUtils;->SCENE_TEXT:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, v1, Lcom/baidu/idl/lib/entity/SceneEntity;->text:Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
