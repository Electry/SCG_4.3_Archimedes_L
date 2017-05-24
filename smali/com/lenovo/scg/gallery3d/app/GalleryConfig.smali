.class public Lcom/lenovo/scg/gallery3d/app/GalleryConfig;
.super Ljava/lang/Object;
.source "GalleryConfig.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lcom/lenovo/scg/gallery3d/app/GalleryConfig;


# instance fields
.field private mCLeGaBranchIterator:I

.field private mCLeGaBranchLvAPI:I

.field private mCLeGaFrameworkVersion:I

.field private mCLeGaJIBranchIterator:I

.field private mCLeGaJIBranchLvAPI:I

.field private mCLeGaJIFrameworkVersion:I

.field private mCLeGaJITrunkIterator:I

.field private mCLeGaJITrunkLvAPI:I

.field private mCLeGaTrunkIterator:I

.field private mCLeGaTrunkLvAPI:I

.field private mCloudSupported:Z

.field private mContext:Landroid/content/Context;

.field private mIsForeignPscenter:Z

.field private mIsGoldBoxSupported:Z

.field private mIsInited:Z

.field private mIsOriginalMenuSupported:Z

.field private mIsQrcodeSupported:Z

.field private mIsWeiboSupported:Z

.field private mMicrothumbnailTargetSize:I

.field private mNetSupported:Z

.field private mShowShareAccountSettingLayout:Z

.field private mSupportShareCenter:Z

.field private mWifiPushWonderfulImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsInited:Z

    .line 29
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsWeiboSupported:Z

    .line 33
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mWifiPushWonderfulImage:Z

    .line 35
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mShowShareAccountSettingLayout:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mSupportShareCenter:Z

    .line 39
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsOriginalMenuSupported:Z

    .line 41
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsGoldBoxSupported:Z

    .line 43
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCloudSupported:Z

    .line 45
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mNetSupported:Z

    .line 47
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsQrcodeSupported:Z

    .line 51
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsForeignPscenter:Z

    .line 55
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaFrameworkVersion:I

    .line 57
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkLvAPI:I

    .line 59
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkIterator:I

    .line 61
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchLvAPI:I

    .line 63
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchIterator:I

    .line 66
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIFrameworkVersion:I

    .line 68
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkLvAPI:I

    .line 70
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkIterator:I

    .line 72
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchLvAPI:I

    .line 74
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchIterator:I

    .line 77
    return-void
.end method

.method public static aboutPageIsForeign(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private assertInited()V
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsInited:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method private formatVersion(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I
    .param p2, "isLast"    # Z

    .prologue
    .line 210
    const-string v0, ""

    .line 211
    .local v0, "res":Ljava/lang/String;
    if-gez p1, :cond_1

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_0
    if-nez p2, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_0
    return-object v0

    .line 214
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->sInstance:Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->sInstance:Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    .line 83
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->sInstance:Lcom/lenovo/scg/gallery3d/app/GalleryConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkCLeGaJIVersion(IIIII)Z
    .locals 2
    .param p1, "frameworkVersion"    # I
    .param p2, "trunk_LvAPI"    # I
    .param p3, "branch_LvAPI"    # I
    .param p4, "trunk_iterator"    # I
    .param p5, "branch_iterator"    # I

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 234
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIFrameworkVersion:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIFrameworkVersion:I

    if-eq v1, p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkLvAPI:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkLvAPI:I

    if-ne v1, p2, :cond_0

    .line 240
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkIterator:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkIterator:I

    if-ne v1, p4, :cond_0

    .line 243
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchLvAPI:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchLvAPI:I

    if-ne v1, p3, :cond_0

    .line 246
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchIterator:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchIterator:I

    if-ne v1, p5, :cond_0

    .line 249
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkCLeGaVersion(IIIII)Z
    .locals 2
    .param p1, "frameworkVersion"    # I
    .param p2, "trunk_LvAPI"    # I
    .param p3, "branch_LvAPI"    # I
    .param p4, "trunk_iterator"    # I
    .param p5, "branch_iterator"    # I

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 191
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaFrameworkVersion:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaFrameworkVersion:I

    if-eq v1, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkLvAPI:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkLvAPI:I

    if-ne v1, p2, :cond_0

    .line 197
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkIterator:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkIterator:I

    if-ne v1, p4, :cond_0

    .line 200
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchLvAPI:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchLvAPI:I

    if-ne v1, p3, :cond_0

    .line 203
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchIterator:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchIterator:I

    if-ne v1, p5, :cond_0

    .line 206
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getConfigCLeGaJIVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    const-string v0, ""

    .line 254
    .local v0, "version":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIFrameworkVersion:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkLvAPI:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkIterator:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchLvAPI:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchIterator:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method public getConfigCLeGaVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    const-string v0, ""

    .line 224
    .local v0, "version":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaFrameworkVersion:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkLvAPI:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkIterator:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchLvAPI:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchIterator:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->formatVersion(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public getForeignPscenter()Z
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 166
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsForeignPscenter:Z

    return v0
.end method

.method public getMicrothumbnailTargetSize()I
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 145
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mMicrothumbnailTargetSize:I

    return v0
.end method

.method public getShowShareAccountSettingLayout()Z
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 155
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mShowShareAccountSettingLayout:Z

    return v0
.end method

.method public getSupportShareCenter()Z
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public getWIfiPushWonderfulImage()Z
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 150
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mWifiPushWonderfulImage:Z

    return v0
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsInited:Z

    .line 88
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsWeiboSupported:Z

    .line 91
    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsGoldBoxSupported:Z

    .line 92
    const v1, 0x7f0904fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mMicrothumbnailTargetSize:I

    .line 93
    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mWifiPushWonderfulImage:Z

    .line 94
    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mShowShareAccountSettingLayout:Z

    .line 95
    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mSupportShareCenter:Z

    .line 96
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsForeignPscenter:Z

    .line 97
    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsOriginalMenuSupported:Z

    .line 98
    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCloudSupported:Z

    .line 99
    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mNetSupported:Z

    .line 100
    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsQrcodeSupported:Z

    .line 102
    const v1, 0x7f0e0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaFrameworkVersion:I

    .line 103
    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkLvAPI:I

    .line 104
    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaTrunkIterator:I

    .line 105
    const v1, 0x7f0e0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchLvAPI:I

    .line 106
    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaBranchIterator:I

    .line 108
    const v1, 0x7f0e004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIFrameworkVersion:I

    .line 109
    const v1, 0x7f0e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkLvAPI:I

    .line 110
    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJITrunkIterator:I

    .line 111
    const v1, 0x7f0e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchLvAPI:I

    .line 112
    const v1, 0x7f0e0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCLeGaJIBranchIterator:I

    .line 113
    const-string v1, "GalleryConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMicrothumbnailTargetSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mMicrothumbnailTargetSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public isCloudSupported()Z
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 176
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isNetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mCloudSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoldBoxSupported()Z
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 140
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsGoldBoxSupported:Z

    return v0
.end method

.method public isNetSupported()Z
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 181
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mNetSupported:Z

    return v0
.end method

.method public isOriginalMenuSupported()Z
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 171
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsOriginalMenuSupported:Z

    return v0
.end method

.method public isQrcodeSupported()Z
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 186
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsQrcodeSupported:Z

    return v0
.end method

.method public isWeiboSupported()Z
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->assertInited()V

    .line 135
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isNetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->mIsWeiboSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
