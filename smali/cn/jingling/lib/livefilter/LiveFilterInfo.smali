.class public Lcn/jingling/lib/livefilter/LiveFilterInfo;
.super Ljava/lang/Object;
.source "LiveFilterInfo.java"


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mNeedSetup:Z

.field private mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jingling/lib/livefilter/LiveOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "ops"    # [Lcn/jingling/lib/livefilter/LiveOp;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mLabel:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mOps:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mNeedSetup:Z

    .line 27
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mOps:Ljava/util/ArrayList;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static generateLiveFilters(Landroid/content/Context;Z)Ljava/util/Map;
    .locals 14
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "smooth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/jingling/lib/livefilter/LiveFilterInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const v13, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 131
    invoke-static {p0}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveFilterInfo;>;"
    if-eqz p1, :cond_0

    .line 138
    const-string/jumbo v1, "skinbeeps"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "skinbeeps"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSkinDetect;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSkinDetect;-><init>()V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "clfugu"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clfugu"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSmooth;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSmooth;-><init>()V

    aput-object v5, v4, v9

    .line 140
    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_fugu.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 141
    const-string v6, "layers/live_fugu"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->MULTIPLY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    invoke-direct {v5, v6, v7}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 139
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "ctianmei"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "ctianmei"

    const/4 v4, 0x4

    new-array v4, v4, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 143
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSmooth;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSmooth;-><init>()V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    invoke-direct {v5, v13}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 144
    const-string v6, "curves/camera_tianmei.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 145
    const-string v6, "layers/camera_tianmei"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->MULTIPLY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3dcccccd    # 0.1f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v12

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 142
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "clvivid"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clvivid"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSmooth;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSmooth;-><init>()V

    aput-object v5, v4, v9

    .line 147
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 148
    const-string v6, "curves/live_vivid.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 146
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "cllomo"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cllomo"

    const/4 v4, 0x4

    new-array v4, v4, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSmooth;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSmooth;-><init>()V

    aput-object v5, v4, v9

    .line 150
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const v6, 0x3f666666    # 0.9f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 151
    const-string v6, "curves/live_lomo.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 152
    const-string v6, "layers/live_lomo"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->LINEAR_BURN:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v12

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "clrixi"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clrixi"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSmooth;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSmooth;-><init>()V

    aput-object v5, v4, v9

    .line 154
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    invoke-direct {v5, v13}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 155
    const-string v6, "curves/live_rixi.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 153
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "clweimei"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clweimei"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 157
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSmooth;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSmooth;-><init>()V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    invoke-direct {v5, v13}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 158
    const-string v6, "curves/live_weimei.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 156
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "justsmooth"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "justsmooth"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 160
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSmooth;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSmooth;-><init>()V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 159
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "cmeibai"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cmeibai"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSmooth;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSmooth;-><init>()V

    aput-object v5, v4, v9

    .line 162
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const v6, 0x3f59999a    # 0.85f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 163
    const-string v6, "curves/camera_meibai.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 161
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "cqingxin"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cqingxin"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 165
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSmooth;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveSmooth;-><init>()V

    aput-object v5, v4, v9

    .line 166
    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/camera_qingxin.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 164
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :goto_0
    const-string v1, "clrise"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clrise"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 197
    const-string v6, "layers/live_rise"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 198
    const-string v6, "curves/live_rise.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 196
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "clwalden"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clwalden"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 200
    const-string v6, "curves/live_walden.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    const-string v6, "layers/live_walden"

    .line 201
    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 199
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "clhefe"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clhefe"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 203
    const-string v6, "layers/live_hefe_m"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->MULTIPLY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    invoke-direct {v5, v6, v7, v13}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 204
    const-string v6, "layers/live_hefe_o"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3e4ccccd    # 0.2f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 205
    const-string v6, "curves/live_hefe.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 202
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "clfuguscenery"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clfuguscenery"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 207
    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_fugu_scenery.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 206
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "cllomoscenery"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cllomoscenery"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 209
    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    const-string v6, "layers/live_lomo_scenery"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    .line 210
    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_lomo_scenery.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 208
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "cqiuse"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cqiuse"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 212
    const-string v6, "curves/camera_qiuse.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 211
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "clenhance"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clenhance"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 214
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSceneEnhance;

    const-string v6, "curves/color_enhance.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSceneEnhance;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 213
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "cljiuguan"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cljiuguan"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 217
    const-string v6, "layers/live_jiuguan"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3f266666    # 0.65f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 218
    const-string v6, "curves/live_jiuguan.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 216
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "cldushi"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cldushi"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 220
    const-string v6, "curves/live_dushi1.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    const-string v6, "layers/live_dushi"

    .line 221
    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    invoke-direct {v5, v6, v7}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_dushi2.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 219
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "clguangyin"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clguangyin"

    const/4 v4, 0x4

    new-array v4, v4, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 223
    const-string v6, "curves/live_guangyin1.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 224
    const-string v6, "layers/live_guangyin"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v10

    .line 225
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const v6, 0x3ee66666    # 0.45f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v11

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 226
    const-string v6, "curves/live_guangyin2.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v12

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 222
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "clyazhi"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clyazhi"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 228
    const-string v6, "layers/live_yazhi"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 229
    const-string v6, "curves/live_yazhi.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 227
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "clzaoan"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clzaoan"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 231
    const-string v6, "layers/live_zaoan"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3f59999a    # 0.85f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    .line 232
    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_zaoan.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 230
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "clvividscenery"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clvividscenery"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 234
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    .line 235
    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_vivid.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 233
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "clfood1"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clfood1"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    .line 239
    const v6, 0x3f933333    # 1.15f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_food1.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 240
    const-string v6, "layers/live_food1"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->MULTIPLY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3dcccccd    # 0.1f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 238
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "clfood2"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clfood2"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 242
    const-string v6, "layers/live_food2"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3f0ccccd    # 0.55f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 243
    const-string v6, "curves/live_food2.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "clfood3"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clfood3"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 245
    const-string v6, "curves/live_food3.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    const-string v6, "layers/live_food3"

    .line 246
    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 244
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "clfood4"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clfood4"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    .line 248
    const v6, 0x3f333333    # 0.7f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    const-string v6, "layers/live_food4"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->MULTIPLY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3f19999a    # 0.6f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 247
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "clfood5"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clfood5"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 250
    const-string v6, "layers/live_food5"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3f19999a    # 0.6f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 249
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "clfood6"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clfood6"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 252
    const-string v6, "curves/live_food6.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 251
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "clheibai"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clheibai"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    .line 256
    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_heibai.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 255
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "clcaisefupian"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clcaisefupian"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 258
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const v6, 0x3f59999a    # 0.85f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 259
    const-string v6, "curves/live_caisefupian.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 257
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "clmidway"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clmidway"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 261
    const-string v6, "layers/live_midway"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3f19999a    # 0.6f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    .line 262
    invoke-direct {v5, v13}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_midway.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 260
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "clm3"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clm3"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 264
    const-string v6, "layers/live-m3"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    .line 265
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live-m3.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 263
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "clgoldfinch"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clgoldfinch"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 267
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const v6, 0x3f333333    # 0.7f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 268
    const-string v6, "curves/live-goldfinch-1.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 269
    const-string v6, "curves/live-goldfinch-2.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "clmeadow"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clmeadow"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    .line 271
    const v6, 0x3f19999a    # 0.6f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live-meadow-1.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    .line 272
    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live-meadow-2.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 270
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v1, "cllouguang"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cllouguang"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 274
    const-string v6, "layers/live_louguang_1"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 275
    const-string v6, "layers/live_louguang_2"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->SCREEN:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 273
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "clyanli"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clyanli"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    .line 278
    const v6, 0x3fa66666    # 1.3f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_yanli.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 279
    const-string v6, "layers/live_yanli"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->OVERLAY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 277
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v1, "newyear1"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "newyear1"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 283
    const-string v6, "layers/newyear1"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->COVERAGE:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 282
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "newyear2"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "newyear2"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 285
    const-string v6, "layers/newyear2"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->COVERAGE:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 284
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v1, "newyear3"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "newyear3"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 287
    const-string v6, "layers/newyear3"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->COVERAGE:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 286
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v1, "newyear4"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "newyear4"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 289
    const-string v6, "layers/newyear4"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->COVERAGE:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 288
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v1, "newyear5"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "newyear5"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 291
    const-string v6, "layers/newyear5"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->COVERAGE:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 290
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v1, "watercolor"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "watercolor"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 295
    new-instance v5, Lcn/jingling/lib/livefilter/LiveWaterColor;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveWaterColor;-><init>()V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 294
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v1, "pencil"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "pencil"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LivePencil;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LivePencil;-><init>()V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "colorpencil"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "colorpencil"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 298
    new-instance v5, Lcn/jingling/lib/livefilter/LiveColorPencil;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveColorPencil;-><init>()V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 297
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "bluecolor"

    .line 300
    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "bluecolor"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveBlueEdge;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveBlueEdge;-><init>()V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 299
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "hopeeffect"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "hopeeffect"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 302
    new-instance v5, Lcn/jingling/lib/livefilter/LiveHopeEffect;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveHopeEffect;-><init>()V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 301
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v1, "oilpainting"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "oilpainting"

    new-array v4, v9, [Lcn/jingling/lib/livefilter/LiveOp;

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "kirsch"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "kirsch"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveKirsch;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveKirsch;-><init>()V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "halftone"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "halftone"

    new-array v4, v9, [Lcn/jingling/lib/livefilter/LiveOp;

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "halftonegray"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "halftonegray"

    new-array v4, v9, [Lcn/jingling/lib/livefilter/LiveOp;

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v1, "clahergb3"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clahergb3"

    new-array v4, v9, [Lcn/jingling/lib/livefilter/LiveOp;

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v1, "original"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string/jumbo v3, "original"

    new-array v4, v9, [Lcn/jingling/lib/livefilter/LiveOp;

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v1, "clshadowhighlight"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clshadowhighlight"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 313
    new-instance v5, Lcn/jingling/lib/livefilter/LiveHighLight;

    invoke-direct {v5}, Lcn/jingling/lib/livefilter/LiveHighLight;-><init>()V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 312
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-object v0

    .line 169
    :cond_0
    const-string v1, "clfugu"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clfugu"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 170
    const-string v6, "curves/live_fugu.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    const-string v6, "layers/live_fugu"

    .line 171
    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->MULTIPLY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    invoke-direct {v5, v6, v7}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 169
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "ctianmei"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "ctianmei"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 173
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    invoke-direct {v5, v13}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 174
    const-string v6, "curves/camera_tianmei.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    .line 175
    const-string v6, "layers/camera_tianmei"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->MULTIPLY:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3dcccccd    # 0.1f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 172
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "clvivid"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clvivid"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 177
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 178
    const-string v6, "curves/live_vivid.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 176
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "cllomo"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cllomo"

    new-array v4, v12, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    .line 180
    const v6, 0x3f666666    # 0.9f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_lomo.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    .line 181
    new-instance v5, Lcn/jingling/lib/livefilter/LiveLayer;

    const-string v6, "layers/live_lomo"

    sget-object v7, Lcn/jingling/lib/livefilter/LiveLayer$Type;->LINEAR_BURN:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v6, v7, v8}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    aput-object v5, v4, v11

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 179
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "clrixi"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clrixi"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    .line 183
    invoke-direct {v5, v13}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    const-string v6, "curves/live_rixi.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 182
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "clweimei"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "clweimei"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 185
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    invoke-direct {v5, v13}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 186
    const-string v6, "curves/live_weimei.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 184
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "justsmooth"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "justsmooth"

    new-array v4, v9, [Lcn/jingling/lib/livefilter/LiveOp;

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "cmeibai"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cmeibai"

    new-array v4, v11, [Lcn/jingling/lib/livefilter/LiveOp;

    .line 189
    new-instance v5, Lcn/jingling/lib/livefilter/LiveSaturation;

    const v6, 0x3f59999a    # 0.85f

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveSaturation;-><init>(F)V

    aput-object v5, v4, v9

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 190
    const-string v6, "curves/camera_meibai.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 188
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "cqingxin"

    new-instance v2, Lcn/jingling/lib/livefilter/LiveFilterInfo;

    const-string v3, "cqingxin"

    new-array v4, v10, [Lcn/jingling/lib/livefilter/LiveOp;

    new-instance v5, Lcn/jingling/lib/livefilter/LiveCurve;

    .line 192
    const-string v6, "curves/camera_qingxin.dat"

    invoke-direct {v5, v6}, Lcn/jingling/lib/livefilter/LiveCurve;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v4}, Lcn/jingling/lib/livefilter/LiveFilterInfo;-><init>(Ljava/lang/String;[Lcn/jingling/lib/livefilter/LiveOp;)V

    .line 191
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public glDraw([FII[Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;)Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .locals 9
    .param p1, "mvpMatrix"    # [F
    .param p2, "vboHandle"    # I
    .param p3, "textureHandle"    # I
    .param p4, "frameBufferSwap"    # [Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;

    .prologue
    .line 100
    const/4 v7, 0x0

    .line 101
    .local v7, "now":I
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 102
    .local v8, "size":I
    aget-object v0, p4, v7

    iput p3, v0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 103
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_0

    .line 110
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError()V

    .line 111
    aget-object v0, p4, v7

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveOp;

    .line 105
    add-int/lit8 v1, v7, 0x1

    rem-int/lit8 v1, v1, 0x2

    aget-object v3, p4, v1

    .line 106
    const/4 v4, 0x2

    .line 107
    aget-object v1, p4, v7

    iget v5, v1, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    move-object v1, p1

    move v2, p2

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcn/jingling/lib/livefilter/LiveOp;->glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V

    .line 108
    add-int/lit8 v0, v7, 0x1

    rem-int/lit8 v7, v0, 0x2

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public glRelease()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    return-void

    .line 118
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveOp;

    .line 119
    .local v0, "op":Lcn/jingling/lib/livefilter/LiveOp;
    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/LiveOp;->glRelease()V

    goto :goto_0
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LiveFilter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 67
    iget-boolean v1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mNeedSetup:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    return-void

    .line 68
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveOp;

    .line 69
    .local v0, "op":Lcn/jingling/lib/livefilter/LiveOp;
    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/LiveOp;->glSetup(Landroid/content/Context;)V

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mNeedSetup:Z

    goto :goto_0

    .line 74
    .end local v0    # "op":Lcn/jingling/lib/livefilter/LiveOp;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveOp;

    .line 75
    .restart local v0    # "op":Lcn/jingling/lib/livefilter/LiveOp;
    invoke-virtual {v0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method public prepareBmForTexture(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 80
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    return-void

    .line 80
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveOp;

    .line 81
    .local v0, "op":Lcn/jingling/lib/livefilter/LiveOp;
    invoke-virtual {v0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->prepareBmForTexture(Landroid/content/Context;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public setup()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mNeedSetup:Z

    .line 55
    return-void
.end method

.method public smooth()Z
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveFilterInfo;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 42
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/livefilter/LiveOp;

    .line 43
    .local v0, "op":Lcn/jingling/lib/livefilter/LiveOp;
    instance-of v2, v0, Lcn/jingling/lib/livefilter/LiveSmooth;

    if-eqz v2, :cond_0

    .line 44
    const/4 v1, 0x1

    goto :goto_0
.end method
