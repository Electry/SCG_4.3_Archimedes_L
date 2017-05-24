.class public Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;
.super Ljava/lang/Object;
.source "NightPreviewJNI.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAutoContrast:Z

.field private mContrast:I

.field private mDenoise:I

.field private mIntensity:I

.field private mNeedDenoise:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    :try_start_0
    const-string/jumbo v1, "scg_nightpreview"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 11
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 12
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t loadLibrary \r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "NightPreviewJNI"

    iput-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->TAG:Ljava/lang/String;

    .line 16
    const/16 v0, 0x32

    iput v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->mIntensity:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->mContrast:I

    .line 18
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->mDenoise:I

    .line 19
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->mAutoContrast:Z

    .line 20
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->mNeedDenoise:Z

    return-void
.end method

.method private final native NightPreviewJNI_Init(II)J
.end method

.method private final native NightPreviewJNI_Process([B[B)J
.end method

.method private final native NightPreviewJNI_ProcessByAddr(JJ)J
.end method

.method private final native NightPreviewJNI_Reset()J
.end method

.method private final native NightPreviewJNI_SetParam(IIIZZ)J
.end method

.method private final native NightPreviewJNI_Uninit()J
.end method


# virtual methods
.method public NightPreview_Init(II)J
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreviewJNI_Init(II)J

    move-result-wide v0

    .line 24
    .local v0, "res":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightPreview_Init res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-wide v0
.end method

.method public NightPreview_Process([B[B)J
    .locals 5
    .param p1, "src"    # [B
    .param p2, "dst"    # [B

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreviewJNI_Process([B[B)J

    move-result-wide v0

    .line 36
    .local v0, "res":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightPreview_Process res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-wide v0
.end method

.method public NightPreview_ProcessByAddr(JJ)J
    .locals 5
    .param p1, "src"    # J
    .param p3, "dst"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreviewJNI_ProcessByAddr(JJ)J

    move-result-wide v0

    .line 42
    .local v0, "res":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightPreview_ProcessByAddr res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-wide v0
.end method

.method public NightPreview_Reset()J
    .locals 5

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreviewJNI_Reset()J

    move-result-wide v0

    .line 48
    .local v0, "res":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightPreview_Reset res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-wide v0
.end method

.method public NightPreview_SetParam(IIIZZ)J
    .locals 5
    .param p1, "lIntensity"    # I
    .param p2, "lContrast"    # I
    .param p3, "lDenoise"    # I
    .param p4, "bAutoContrast"    # Z
    .param p5, "bNeedDenoise"    # Z

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreviewJNI_SetParam(IIIZZ)J

    move-result-wide v0

    .line 54
    .local v0, "res":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightPreview_SetParam res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-wide v0
.end method

.method public NightPreview_Uninit()J
    .locals 5

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreviewJNI_Uninit()J

    move-result-wide v0

    .line 30
    .local v0, "res":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightPreview_Uninit res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-wide v0
.end method
