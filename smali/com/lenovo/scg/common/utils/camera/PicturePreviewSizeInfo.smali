.class public Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;
.super Ljava/lang/Object;
.source "PicturePreviewSizeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo$OnPreviewRestartedListener;
    }
.end annotation


# instance fields
.field private isNeedRestartPreview:Z

.field private mCurrentPictureSize:Ljava/lang/String;

.field private mCurrentPreviewSize:Ljava/lang/String;

.field private mListener:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo$OnPreviewRestartedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->isNeedRestartPreview:Z

    .line 55
    iput-object v1, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPictureSize:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPreviewSize:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mPictureSize"    # Ljava/lang/String;
    .param p2, "mPreviewSize"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->isNeedRestartPreview:Z

    .line 55
    iput-object v1, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPictureSize:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPreviewSize:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPictureSize:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPreviewSize:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getCurrentPictureSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPictureSize:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPreviewSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPreviewSize:Ljava/lang/String;

    return-object v0
.end method

.method public isPreviewAlreadyRestarted()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->isNeedRestartPreview:Z

    return v0
.end method

.method public setCurrentPictureSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCurrentPictureSize"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPictureSize:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCurrentPreviewSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "nCurrentPreviewSize"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mCurrentPreviewSize:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setNeedRestartPreview(Z)V
    .locals 0
    .param p1, "isNeedRestartPreview"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->isNeedRestartPreview:Z

    .line 53
    return-void
.end method

.method public setOnPreviewRestartedListener(Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo$OnPreviewRestartedListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo$OnPreviewRestartedListener;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo;->mListener:Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo$OnPreviewRestartedListener;

    .line 22
    return-void
.end method
