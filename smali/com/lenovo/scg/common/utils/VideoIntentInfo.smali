.class public Lcom/lenovo/scg/common/utils/VideoIntentInfo;
.super Ljava/lang/Object;
.source "VideoIntentInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoIntentInfo"


# instance fields
.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mIntentQuality:I

.field private mIntentSize:J

.field private mIntentUri:Landroid/net/Uri;

.field private mMaxVideoDurationInMs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_Intent_HIGH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentQuality:I

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentSize:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mMaxVideoDurationInMs:I

    return-void
.end method


# virtual methods
.method public clearValues()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    const-string v0, "VideoIntentInfo"

    const-string v1, "clearValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_Intent_HIGH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentQuality:I

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentSize:J

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mMaxVideoDurationInMs:I

    .line 76
    iput-object v2, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mCurrentVideoFilename:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mCurrentVideoUri:Landroid/net/Uri;

    .line 78
    return-void
.end method

.method public getmCurrentVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getmCurrentVideoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getmIntentQuality()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentQuality:I

    return v0
.end method

.method public getmIntentSize()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentSize:J

    return-wide v0
.end method

.method public getmIntentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getmMaxVideoDurationInMs()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mMaxVideoDurationInMs:I

    return v0
.end method

.method public setmCurrentVideoFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCurrentVideoFilename"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mCurrentVideoFilename:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setmCurrentVideoUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "mCurrentVideoUri"    # Landroid/net/Uri;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mCurrentVideoUri:Landroid/net/Uri;

    .line 35
    return-void
.end method

.method public setmIntentQuality(I)V
    .locals 0
    .param p1, "mIntentQuality"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentQuality:I

    .line 51
    return-void
.end method

.method public setmIntentSize(J)V
    .locals 1
    .param p1, "mIntentSize"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentSize:J

    .line 59
    return-void
.end method

.method public setmIntentUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "mIntentUri"    # Landroid/net/Uri;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mIntentUri:Landroid/net/Uri;

    .line 86
    return-void
.end method

.method public setmMaxVideoDurationInMs(I)V
    .locals 0
    .param p1, "mMaxVideoDurationInMs"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->mMaxVideoDurationInMs:I

    .line 67
    return-void
.end method
