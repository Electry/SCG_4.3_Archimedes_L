.class public Lcom/lenovo/scg/camera/agender/AgenderManager;
.super Ljava/lang/Object;
.source "AgenderManager.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static mAgenderManager:Lcom/lenovo/scg/camera/agender/AgenderManager; = null

.field private static mCloseAgenderDetect:Z = false

.field private static final mLibName:Ljava/lang/String; = "scg_agender_detection_jni"


# instance fields
.field private mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

.field private mContext:Landroid/content/Context;

.field private mHasInitMsg:Z

.field private mHasUninitMsg:Z

.field private mIsInited:Z

.field private miPluginId:I

.field private miPreviewHeight:I

.field private miPreviewWidth:I

.field private t:J

.field private tcount:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "AgenderManager"

    sput-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderManager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mCloseAgenderDetect:Z

    .line 271
    const-string v0, "ati_framework_v2.0.1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string v1, "load ati_framework_v2.0.1"

    invoke-static {v0, v1}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyCb:Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->setAppCbNotify(Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;)V

    .line 275
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPluginId:I

    .line 28
    const/16 v0, 0x780

    iput v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewWidth:I

    .line 30
    const/16 v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewHeight:I

    .line 32
    new-instance v0, Lcom/lenovo/scg/camera/agender/AgenderParams;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/agender/AgenderParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    .line 34
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mIsInited:Z

    .line 35
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mHasUninitMsg:Z

    .line 36
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mHasInitMsg:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mContext:Landroid/content/Context;

    .line 193
    iput-wide v2, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->t:J

    .line 194
    iput-wide v2, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->tcount:J

    return-void
.end method

.method public static getCloseAgenderDetect()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mCloseAgenderDetect:Z

    return v0
.end method

.method public static getInstanse()Lcom/lenovo/scg/camera/agender/AgenderManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderManager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/lenovo/scg/camera/agender/AgenderManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/agender/AgenderManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderManager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderManager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    return-object v0
.end method

.method private loadAsserFile(Ljava/lang/String;)[B
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 162
    .local v2, "outlineIs":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "loadAsserFile: mContext == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 168
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v2, :cond_1

    .line 174
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :cond_1
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 170
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    if-eqz v2, :cond_1

    .line 174
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 176
    :catch_2
    move-exception v1

    .line 177
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 173
    if-eqz v2, :cond_2

    .line 174
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 178
    :cond_2
    :goto_1
    throw v3

    .line 176
    :catch_3
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private processAgender([B)Lcom/lenovo/scg/camera/agender/AgenderParams;
    .locals 12
    .param p1, "data"    # [B

    .prologue
    .line 198
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string v1, "AgenderParams processAgender"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v7, 0x0

    .line 201
    .local v7, "ret":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->isStaticImage:Z

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mbDetectAge:Z

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mbDetectGender:Z

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 209
    .local v8, "t1":J
    iget v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPluginId:I

    const/4 v1, 0x0

    iget v3, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewHeight:I

    const/16 v5, 0x802

    iget-object v6, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->processRawData(II[BIIILjava/lang/Object;)I

    move-result v7

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 212
    .local v10, "t2":J
    iget-wide v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->t:J

    sub-long v2, v10, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->t:J

    .line 213
    iget-wide v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->tcount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->tcount:J

    .line 214
    iget-wide v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->tcount:J

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 216
    const-string v0, "AStime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgeGender time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->t:J

    const-wide/16 v4, 0x1e

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->t:J

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->tcount:J

    .line 220
    :cond_0
    if-eqz v7, :cond_1

    .line 221
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgenderManager--> processRawData() failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string v1, "AgenderParams processAgender end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    return-object v0
.end method

.method public static setCloseAgenderDetect(Z)V
    .locals 0
    .param p0, "close"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mCloseAgenderDetect:Z

    .line 45
    return-void
.end method


# virtual methods
.method public init(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v7, 0x1

    .line 113
    sget-boolean v3, Lcom/lenovo/scg/camera/agender/AgenderManager;->mCloseAgenderDetect:Z

    if-eqz v3, :cond_0

    .line 153
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/lenovo/scg/camera/agender/MInitParam;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/agender/MInitParam;-><init>()V

    .line 118
    .local v0, "param":Lcom/lenovo/scg/camera/agender/MInitParam;
    const-string v3, "arcsoft_agegender_model.dat"

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/agender/AgenderManager;->loadAsserFile(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/scg/camera/agender/MInitParam;->mModelData:[B

    .line 120
    iput p1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewWidth:I

    .line 121
    iput p2, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewHeight:I

    .line 123
    const-string v2, "com.lenovo.scg"

    .line 124
    .local v2, "sPackageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->setAppPackageName(Ljava/lang/String;)V

    .line 125
    sget-object v3, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AgenderManager--> init()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "ret":I
    sget-object v3, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string v4, "AgenderManager--> init() plugin AgenderPlugin load start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget v3, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPluginId:I

    const-string/jumbo v4, "scg_agender_detection_jni"

    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/way/CaptureWayTools;->loadPlugin(ILjava/lang/String;)I

    move-result v1

    .line 130
    sget-object v3, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string v4, "AgenderManager--> init() plugin AgenderPlugin load end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz v1, :cond_1

    .line 132
    sget-object v3, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AgenderManager--> init() plugin AgenderPlugin load failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPluginId:I

    invoke-static {v3, v7}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->enablePlugin(II)V

    .line 138
    iget v3, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPluginId:I

    iget v4, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewWidth:I

    iget v5, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewHeight:I

    const/16 v6, 0x802

    invoke-static {v3, v4, v5, v6, v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->initPlugin(IIIILjava/lang/Object;)I

    move-result v1

    .line 140
    if-eqz v1, :cond_2

    .line 141
    sget-object v3, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AgenderManager--> init() plugin init failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_1
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/lenovo/scg/camera/agender/MInitParam;->mModelData:[B

    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 152
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mIsInited:Z

    goto/16 :goto_0

    .line 144
    :cond_2
    sget-object v3, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string v4, "AgenderManager--> init() plugin init succeed "

    invoke-static {v3, v4}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mIsInited:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mHasUninitMsg:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewSizeChanged(II)Z
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 278
    iget v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processAgender([BLcom/lenovo/scg/camera/facetracking/MFaceResult;)Lcom/lenovo/scg/camera/agender/AgenderParams;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    .prologue
    const/4 v4, 0x5

    .line 65
    sget-object v1, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processAgender_atHandlerThread() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz p2, :cond_3

    .line 68
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget v2, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceNumber:I

    iput v2, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceNumber:I

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceNumber:I

    if-ge v0, v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v1, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    new-array v2, v4, [Landroid/graphics/Rect;

    iput-object v2, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v1, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v1, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v1, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v1, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceOriention:[I

    if-nez v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    new-array v2, v4, [I

    iput-object v2, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceOriention:[I

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v1, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceOriention:[I

    iget-object v2, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceOriention:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "i":I
    :cond_3
    sget-boolean v1, Lcom/lenovo/scg/camera/front/FrontView;->isDebug:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/lenovo/scg/camera/agender/AgenderManager;->mCloseAgenderDetect:Z

    if-eqz v1, :cond_7

    .line 86
    :cond_4
    sget-object v1, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AgenderParams processAgender is mCloseAgenderDetect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lenovo/scg/camera/agender/AgenderManager;->mCloseAgenderDetect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v1, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    if-nez v1, :cond_5

    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    iput-object v2, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    iget-object v1, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    if-nez v1, :cond_6

    .line 92
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    iput-object v2, v1, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    .line 95
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    .line 107
    :goto_1
    return-object v1

    .line 98
    :cond_7
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mHasUninitMsg:Z

    if-eqz v1, :cond_8

    .line 99
    sget-object v1, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processAgender_atHandlerThread(): mHasUninitMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    goto :goto_1

    .line 103
    :cond_8
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mIsInited:Z

    if-nez v1, :cond_9

    .line 104
    sget-object v1, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processAgender_atHandlerThread(): !mIsInited"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    goto :goto_1

    .line 107
    :cond_9
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/agender/AgenderManager;->processAgender([B)Lcom/lenovo/scg/camera/agender/AgenderParams;

    move-result-object v1

    goto :goto_1

    .line 89
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 92
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public processStaticImageAgender([BLcom/lenovo/scg/camera/agender/AgenderParams;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "param"    # Lcom/lenovo/scg/camera/agender/AgenderParams;

    .prologue
    .line 253
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    const-string v1, "AgenderParams processStaticImageAgender"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v7, 0x0

    .line 258
    .local v7, "ret":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 260
    .local v8, "time":J
    iget v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPluginId:I

    const/4 v1, 0x0

    iget v3, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPreviewHeight:I

    const/16 v5, 0x802

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->processRawData(II[BIIILjava/lang/Object;)I

    move-result v7

    .line 261
    if-eqz v7, :cond_0

    .line 262
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgenderManager--> processStaticImageAgender: processRawData() failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgenderParams processAgender WITH time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mContext:Landroid/content/Context;

    .line 157
    return-void
.end method

.method public unInit()V
    .locals 3

    .prologue
    .line 185
    sget-object v0, Lcom/lenovo/scg/camera/agender/AgenderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uninit()---start: mIsInited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mIsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mIsInited:Z

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPluginId:I

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->unInitPlugin(I)V

    .line 188
    iget v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->miPluginId:I

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->unLoadPlugin(I)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/agender/AgenderManager;->mIsInited:Z

    .line 191
    :cond_0
    return-void
.end method
