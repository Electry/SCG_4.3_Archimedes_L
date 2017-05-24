.class public Lcom/lenovo/scg/camera/water/WaterAssist;
.super Ljava/lang/Object;
.source "WaterAssist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;
    }
.end annotation


# static fields
.field private static final MSG_PROCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WaterAssist"

.field private static mInstance:Lcom/lenovo/scg/camera/water/WaterAssist;


# instance fields
.field private mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

.field private mHandler:Landroid/os/Handler;

.field private mMFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

.field private mOnDetectDoneListener:Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;

.field private mPreviewCBRegisted:Z

.field private mPreviewCallback:Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

.field private mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/lenovo/scg/camera/water/WaterAssist;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/water/WaterAssist;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/water/WaterAssist;->mInstance:Lcom/lenovo/scg/camera/water/WaterAssist;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/lenovo/scg/camera/water/WaterAssist$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/water/WaterAssist$1;-><init>(Lcom/lenovo/scg/camera/water/WaterAssist;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/lenovo/scg/camera/water/WaterAssist$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/water/WaterAssist$2;-><init>(Lcom/lenovo/scg/camera/water/WaterAssist;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCallback:Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/water/WaterAssist;)Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterAssist;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mMFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/water/WaterAssist;)Lcom/lenovo/scg/camera/agender/AgenderParams;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterAssist;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/water/WaterAssist;[BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterAssist;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "x3"    # Lcom/lenovo/scg/camera/agender/AgenderParams;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/water/WaterAssist;->process([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/water/WaterAssist;[BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterAssist;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "x3"    # Lcom/lenovo/scg/camera/agender/AgenderParams;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/water/WaterAssist;->processWater([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/water/WaterAssist;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterAssist;->mInstance:Lcom/lenovo/scg/camera/water/WaterAssist;

    return-object v0
.end method

.method private process([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    .locals 4
    .param p1, "dataIn"    # [B
    .param p2, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;

    .prologue
    .line 69
    if-nez p2, :cond_1

    .line 70
    const-string v1, "WaterAssist"

    const-string v2, "faceData = null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v0, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceNumber:I

    .line 76
    .local v0, "number":I
    const-string v1, "WaterAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process, face number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-nez p3, :cond_2

    .line 79
    const-string v1, "WaterAssist"

    const-string v2, "agender = null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mOnDetectDoneListener:Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mOnDetectDoneListener:Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;

    iget-object v2, p3, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    iget-object v3, p3, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    invoke-interface {v1, v0, v2, v3}, Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;->onFaceDetectDone(I[I[I)V

    goto :goto_0
.end method

.method private processWater([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    .locals 2
    .param p1, "dataIn"    # [B
    .param p2, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;

    .prologue
    .line 89
    iput-object p2, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mMFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    .line 90
    iput-object p3, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    .line 91
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 93
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method


# virtual methods
.method public registPreviewCallback()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "WaterAssist"

    const-string/jumbo v1, "registPreviewCallback, mPreviewCallbackManager = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCBRegisted:Z

    if-eqz v0, :cond_1

    .line 153
    const-string v0, "WaterAssist"

    const-string/jumbo v1, "registPreviewCallback, mPreviewCBRegisted = true!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_1
    const-string v0, "WaterAssist"

    const-string/jumbo v1, "registPreviewCallback, active"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCallback:Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->addPreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCBRegisted:Z

    goto :goto_0
.end method

.method public setOnFaceDetectDoneListener(Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mOnDetectDoneListener:Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;

    .line 66
    return-void
.end method

.method public setPreviewCallbackManager(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .line 145
    return-void
.end method

.method public unregistPreviewCallback()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-nez v0, :cond_0

    .line 170
    const-string v0, "WaterAssist"

    const-string/jumbo v1, "unregistPreviewCallback, mPreviewCallbackManager = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCBRegisted:Z

    if-nez v0, :cond_1

    .line 174
    const-string v0, "WaterAssist"

    const-string/jumbo v1, "unregistPreviewCallback, mPreviewCBRegisted = true!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "WaterAssist"

    const-string/jumbo v1, "unregistPreviewCallback, active"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCallback:Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->removePreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist;->mPreviewCBRegisted:Z

    goto :goto_0
.end method
