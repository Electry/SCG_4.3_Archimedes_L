.class Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileNamer"
.end annotation


# instance fields
.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mLastDate:J

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    .line 900
    return-void
.end method


# virtual methods
.method public generateName(J)Ljava/lang/String;
    .locals 9
    .param p1, "dateTaken"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 903
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 904
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "result":Ljava/lang/String;
    div-long v2, p1, v6

    iget-wide v4, p0, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;->mLastDate:J

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 909
    iget v2, p0, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 916
    :goto_0
    return-object v1

    .line 912
    :cond_0
    iput-wide p1, p0, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;->mLastDate:J

    .line 913
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;->mSameSecondCount:I

    goto :goto_0
.end method
