.class public Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;
.super Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;
.source "FrontBeautyCameraMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FrontBeautyCameraMode"

.field public static mIsOneShot:Z


# instance fields
.field private final OPEN:I

.field private mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

.field private mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

.field private mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<[B>;"
        }
    .end annotation
.end field

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

.field private mPreviewCallback:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;

.field private mRegistered:Z

.field private mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mRegistered:Z

    .line 61
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    .line 69
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 71
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    .line 73
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    .line 199
    new-instance v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;-><init>(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    .line 503
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->OPEN:I

    .line 505
    new-instance v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$3;-><init>(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/common/utils/FaceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;Landroid/content/Context;[B[Landroid/graphics/Rect;I[IIIIII)[B
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # [B
    .param p3, "x3"    # [Landroid/graphics/Rect;
    .param p4, "x4"    # I
    .param p5, "x5"    # [I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # I
    .param p10, "x10"    # I

    .prologue
    .line 57
    invoke-direct/range {p0 .. p10}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->beautyProcess(Landroid/content/Context;[B[Landroid/graphics/Rect;I[IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private beautyProcess(Landroid/content/Context;[B[Landroid/graphics/Rect;I[IIIIII)[B
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # [B
    .param p3, "faceRects"    # [Landroid/graphics/Rect;
    .param p4, "faceNumber"    # I
    .param p5, "faceOrients"    # [I
    .param p6, "pictureWidth"    # I
    .param p7, "pictureHeight"    # I
    .param p8, "previewWidth"    # I
    .param p9, "previewHeight"    # I
    .param p10, "orientation"    # I

    .prologue
    .line 543
    const-string v2, "FrontBeautyCameraMode"

    const-string v3, "beautyProcess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsOneShot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mIsOneShot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pictureWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pictureHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "previewWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "previewHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrontView.mFaceNumberForSave = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/camera/front/FrontView;->mFaceNumberForSave:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "faceNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    .line 554
    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->procPreviewFaceRects(IIIII)V

    .line 556
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 557
    .local v18, "previewFaceList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/camera/front/FaceData;>;"
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_0
    sget v2, Lcom/lenovo/scg/camera/front/FrontView;->mFaceNumberForSave:I

    if-ge v11, v2, :cond_4

    .line 558
    new-instance v13, Lcom/lenovo/scg/camera/front/FaceData;

    invoke-direct {v13}, Lcom/lenovo/scg/camera/front/FaceData;-><init>()V

    .line 559
    .local v13, "info":Lcom/lenovo/scg/camera/front/FaceData;
    iget-object v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 560
    iget-object v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 561
    iget-object v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 562
    iget-object v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 563
    sget-object v2, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget-object v3, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRectArea:I

    .line 564
    sget-object v2, Lcom/lenovo/scg/camera/front/FrontView;->mFaceOriention:[I

    aget v2, v2, v11

    iput v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mOrient:I

    .line 565
    sget-object v2, Lcom/lenovo/scg/camera/front/FrontView;->mSex:[I

    aget v2, v2, v11

    iput v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->sex:I

    .line 566
    sget-object v2, Lcom/lenovo/scg/camera/front/FrontView;->mFaceAge:[I

    aget v2, v2, v11

    iput v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->age:I

    .line 568
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 569
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 571
    :cond_1
    const/4 v12, 0x0

    .local v12, "index1":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 572
    iget v3, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRectArea:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/front/FaceData;

    iget v2, v2, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRectArea:I

    if-ge v3, v2, :cond_3

    .line 573
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 580
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 571
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 586
    .end local v12    # "index1":I
    .end local v13    # "info":Lcom/lenovo/scg/camera/front/FaceData;
    :cond_4
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 587
    .local v17, "pictureFaceList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/camera/front/FaceData;>;"
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, p4

    if-ge v11, v0, :cond_9

    .line 589
    new-instance v13, Lcom/lenovo/scg/camera/front/FaceData;

    invoke-direct {v13}, Lcom/lenovo/scg/camera/front/FaceData;-><init>()V

    .line 590
    .restart local v13    # "info":Lcom/lenovo/scg/camera/front/FaceData;
    iget-object v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    aget-object v3, p3, v11

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 591
    iget-object v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    aget-object v3, p3, v11

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 592
    iget-object v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    aget-object v3, p3, v11

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 593
    iget-object v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    aget-object v3, p3, v11

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 594
    aget-object v2, p3, v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    aget-object v3, p3, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRectArea:I

    .line 595
    aget v2, p5, v11

    iput v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mOrient:I

    .line 596
    const/4 v2, -0x1

    iput v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->age:I

    .line 597
    const/4 v2, -0x1

    iput v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->sex:I

    .line 599
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 600
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 602
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "index1":I
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v12, v2, :cond_7

    .line 603
    iget v3, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRectArea:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/front/FaceData;

    iget v2, v2, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRectArea:I

    if-ge v3, v2, :cond_8

    .line 604
    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 611
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 612
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_4

    .line 602
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 617
    .end local v12    # "index1":I
    .end local v13    # "info":Lcom/lenovo/scg/camera/front/FaceData;
    :cond_9
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 619
    .local v15, "mergedFaceList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/camera/front/FaceData;>;"
    const/4 v11, 0x0

    :goto_6
    sget v2, Lcom/lenovo/scg/camera/front/FrontView;->mFaceNumberForSave:I

    if-ge v11, v2, :cond_d

    .line 620
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lenovo/scg/camera/front/FaceData;

    .line 622
    .restart local v13    # "info":Lcom/lenovo/scg/camera/front/FaceData;
    const/4 v10, 0x0

    .line 623
    .local v10, "i":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v20

    .line 624
    .local v20, "size":I
    const/4 v10, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v10, v0, :cond_a

    .line 625
    iget-object v3, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/front/FaceData;

    iget-object v2, v2, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->isRectMatch(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 629
    :cond_a
    move/from16 v0, v20

    if-ge v10, v0, :cond_c

    .line 630
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/lenovo/scg/camera/front/FaceData;

    .line 631
    .local v21, "tmp":Lcom/lenovo/scg/camera/front/FaceData;
    iget v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->age:I

    move-object/from16 v0, v21

    iput v2, v0, Lcom/lenovo/scg/camera/front/FaceData;->age:I

    .line 632
    iget v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->sex:I

    move-object/from16 v0, v21

    iput v2, v0, Lcom/lenovo/scg/camera/front/FaceData;->sex:I

    .line 633
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v21    # "tmp":Lcom/lenovo/scg/camera/front/FaceData;
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 624
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 635
    :cond_c
    const-string v2, "FrontBeautyCameraMode"

    const-string/jumbo v3, "merge one rect from preview rect(%d,%d,%d,%d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v4, v5

    const/4 v5, 0x1

    iget-object v0, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v4, v5

    const/4 v5, 0x2

    iget-object v0, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v4, v5

    const/4 v5, 0x3

    iget-object v0, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v15, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 642
    .end local v10    # "i":I
    .end local v13    # "info":Lcom/lenovo/scg/camera/front/FaceData;
    .end local v20    # "size":I
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 644
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v6, v2, [Landroid/graphics/Rect;

    .line 645
    .local v6, "faces":[Landroid/graphics/Rect;
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v7, v2, [I

    .line 646
    .local v7, "orients":[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v8, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    const/4 v11, 0x0

    :goto_9
    array-length v2, v6

    if-ge v11, v2, :cond_10

    .line 650
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lenovo/scg/camera/front/FaceData;

    .line 651
    .restart local v13    # "info":Lcom/lenovo/scg/camera/front/FaceData;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v6, v11

    .line 652
    aget-object v2, v6, v11

    iget-object v3, v13, Lcom/lenovo/scg/camera/front/FaceData;->mFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 653
    iget v2, v13, Lcom/lenovo/scg/camera/front/FaceData;->mOrient:I

    aput v2, v7, v11

    .line 655
    new-instance v16, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-direct/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;-><init>()V

    .line 656
    .local v16, "p":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    iget v0, v13, Lcom/lenovo/scg/camera/front/FaceData;->sex:I

    move/from16 v19, v0

    .line 657
    .local v19, "sex":I
    iget v9, v13, Lcom/lenovo/scg/camera/front/FaceData;->age:I

    .line 658
    .local v9, "age":I
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter loop sex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 661
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperBright(II)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinBrightLevel(I)V

    .line 662
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperSoften(II)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinSoftenLevel(I)V

    .line 663
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperSamllFace(II)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSlenderFaceLevel(I)V

    .line 664
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperBigEye(II)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmEyeEnlargmentLevel(I)V

    .line 665
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperBrightEye(II)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmEyeBrightLevel(I)V

    .line 666
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperBlackEye(II)Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setMbDepouch(Z)V

    .line 667
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperBrightTooth(II)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmTeethWhiteLevel(I)V

    .line 668
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperRemoveSpot(II)Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setMbDeBlemish(Z)V

    .line 669
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperRemoveOil(II)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setlRemoveShineLevel(I)V

    .line 670
    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperBigNose(II)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmNoseHighlightLevel(I)V

    .line 675
    :cond_e
    :goto_a
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 671
    :cond_f
    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 672
    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinBrightLevel(I)V

    .line 673
    sget v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinSoftenLevel(I)V

    goto :goto_a

    .line 678
    .end local v9    # "age":I
    .end local v13    # "info":Lcom/lenovo/scg/camera/front/FaceData;
    .end local v16    # "p":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    .end local v19    # "sex":I
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->createPicPostProcessJNI(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    move-result-object v1

    .line 680
    .local v1, "mPicPostProcessJNI":Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;
    const/4 v14, 0x0

    .line 681
    .local v14, "mSaveByte":[B
    sget-boolean v2, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mIsOneShot:Z

    if-eqz v2, :cond_11

    .line 682
    move-object/from16 v0, p2

    array-length v3, v0

    move-object/from16 v2, p2

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v8}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftProcessFaceFromYUVData([BIII[Landroid/graphics/Rect;[ILjava/util/ArrayList;)[B

    move-result-object v14

    .line 687
    :goto_b
    invoke-static {}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->destroyPicPostProcess()V

    .line 688
    const/4 v1, 0x0

    .line 690
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->clear()V

    .line 691
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->clear()V

    .line 692
    invoke-virtual {v15}, Ljava/util/LinkedList;->clear()V

    .line 694
    const-string v2, "FrontBeautyCameraMode"

    const-string v3, "beautyProcess end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-object v14

    .line 684
    :cond_11
    move-object/from16 v0, p2

    array-length v3, v0

    move-object/from16 v2, p2

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v8}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftProcessFaceFromJpegData([BIII[Landroid/graphics/Rect;[ILjava/util/ArrayList;)[B

    move-result-object v14

    goto :goto_b
.end method

.method private handle(Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask",
            "<*>;",
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "task":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<*>;"
    .local p2, "callback":Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;, "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback<*>;"
    if-eqz p2, :cond_0

    .line 83
    invoke-interface {p2}, Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;->handleStart()V

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->setHandleCallback(Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V

    .line 88
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PictureTakenAbstractHandleTask is null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;->handleFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private handleBeautyFace([BLcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "callback":Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;, "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback<*>;"
    new-instance v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;-><init>(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;[B)V

    invoke-direct {p0, v0, p2}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->handle(Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V

    .line 180
    return-void
.end method

.method private isRectMatch(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 13
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .prologue
    .line 700
    iget v8, p1, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 701
    .local v6, "startx":I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 702
    .local v1, "endx":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v9, v1, v6

    sub-int v4, v8, v9

    .line 704
    .local v4, "over_width":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 705
    .local v7, "starty":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 706
    .local v2, "endy":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v9, v2, v7

    sub-int v3, v8, v9

    .line 708
    .local v3, "over_height":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    mul-int/2addr v8, v9

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 710
    .local v0, "area":I
    const/4 v5, 0x0

    .line 711
    .local v5, "ratio":F
    if-lez v4, :cond_0

    if-gtz v3, :cond_1

    .line 712
    :cond_0
    const/4 v5, 0x0

    .line 717
    :goto_0
    const-string v8, "FrontBeautyCameraMode"

    const-string v9, "isRectMatch (%d,%d,%d,%d),(%d,%d,%d,%d)"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget v12, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    iget v12, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget v12, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    iget v12, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    iget v12, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v8, "FrontBeautyCameraMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRectMatch ratio:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const v8, 0x3f4ccccd    # 0.8f

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_2

    .line 721
    const-string v8, "FrontBeautyCameraMode"

    const-string v9, "isRectMatch MATCH!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v8, 0x1

    .line 725
    :goto_1
    return v8

    .line 714
    :cond_1
    mul-int v8, v4, v3

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v5, v8, v9

    goto/16 :goto_0

    .line 725
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private procPreviewFaceRects(IIIII)V
    .locals 8
    .param p1, "pictureWidth"    # I
    .param p2, "pictureHeight"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 518
    int-to-float v5, p3

    int-to-float v6, p1

    div-float v3, v5, v6

    .line 519
    .local v3, "mWScale":F
    int-to-float v5, p4

    int-to-float v6, p2

    div-float v2, v5, v6

    .line 520
    .local v2, "mHScale":F
    const-string v5, "FrontBeautyCameraMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWScale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mHScale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v5, Lcom/lenovo/scg/camera/front/FrontView;->mFaceNumberForSave:I

    if-ge v0, v5, :cond_1

    .line 524
    rem-int/lit16 v5, p5, 0xb4

    if-nez v5, :cond_0

    .line 525
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 526
    .local v4, "t":I
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    sget-object v6, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p4, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 527
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    sub-int v6, p4, v4

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 534
    .end local v4    # "t":I
    :goto_1
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 535
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 536
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 537
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_0
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 530
    .local v1, "l":I
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    sget-object v6, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 531
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    sub-int v6, p3, v1

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 539
    .end local v1    # "l":I
    :cond_1
    return-void
.end method


# virtual methods
.method public OnDebugNotify(I)V
    .locals 0
    .param p1, "notify"    # I

    .prologue
    .line 78
    return-void
.end method

.method public OnLeSCFPictureTaken([B)Z
    .locals 3
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x1

    .line 245
    const-string v0, "FrontBeautyCameraMode"

    const-string v1, "OnLeSCFPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return v2

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->handleBeautyFace([BLcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V

    goto :goto_0
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 454
    return-void
.end method

.method public closeBeautyCallBack()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 371
    const-string v6, "FrontBeautyCameraMode"

    const-string v7, "closeBeautyCallBack()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v6

    if-nez v6, :cond_0

    .line 424
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->myHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 378
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->myHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_front_water_key"

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0f0022

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "needOffSmileDetect"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v1

    .line 386
    .local v1, "functionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    const/4 v3, 0x1

    .line 387
    .local v3, "needOffSmileDetect":Z
    instance-of v6, v1, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    if-eqz v6, :cond_4

    .line 388
    check-cast v1, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .end local v1    # "functionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->getmFrontView()Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v0

    .line 389
    .local v0, "frontView":Lcom/lenovo/scg/camera/front/FrontView;
    sget-object v4, Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;->FACE_CALLBACK:Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;

    .line 390
    .local v4, "type":Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
    if-eqz v0, :cond_4

    .line 391
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->getWaterPanel()Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    move-result-object v2

    .line 392
    .local v2, "fwp":Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    if-eqz v2, :cond_2

    .line 393
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->getWaterDataType()Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;

    move-result-object v4

    .line 395
    :cond_2
    const-string/jumbo v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;->SMILE:Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;

    if-ne v4, v6, :cond_3

    .line 396
    const/4 v3, 0x0

    .line 398
    :cond_3
    const-string v6, "FrontBeautyCameraMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "closeBeautyCallBack, value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .end local v0    # "frontView":Lcom/lenovo/scg/camera/front/FrontView;
    .end local v2    # "fwp":Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    .end local v4    # "type":Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
    :cond_4
    const-string/jumbo v6, "needOffSmileDetect"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 403
    const-string v6, "FrontBeautyCameraMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "closeBeautyCallBack, needOffSmileDetect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz v3, :cond_5

    .line 406
    const-string/jumbo v6, "setSmileLevelDetectOff"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setSmileLevelDetectOff()V

    .line 408
    const-string/jumbo v6, "setSmileLevelDetectOff"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 411
    :cond_5
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mRegistered:Z

    if-eqz v6, :cond_6

    .line 412
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mRegistered:Z

    .line 413
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mPreviewCallback:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->removePreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 414
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mPreviewCallback:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->releaseFaceBeautyPreviewBufferedDataCallback()V

    .line 415
    iput-object v10, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mPreviewCallback:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;

    .line 418
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v6, :cond_7

    .line 419
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 420
    iput-object v10, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 423
    :cond_7
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    sget-object v8, Lcom/lenovo/scg/camera/front/FrontView;->CLEAR:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->enter(Landroid/content/Context;)V

    .line 265
    const-string v2, "FrontBeautyCameraMode"

    const-string v3, "enter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    if-nez v2, :cond_0

    .line 268
    new-instance v2, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    invoke-direct {v2}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    .line 269
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->initFaceDetect(I)I

    .line 272
    :cond_0
    new-instance v2, Lcom/lenovo/scg/common/utils/FaceInfo;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/lenovo/scg/common/utils/FaceInfo;-><init>(I)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    .line 274
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    .line 275
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v1

    .line 276
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 277
    .local v0, "para":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 281
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mIsSupportZSD:Z

    .line 283
    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->setListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;)V

    .line 284
    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V

    .line 286
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->myHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    return-void
.end method

.method protected exit()V
    .locals 5

    .prologue
    .line 328
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->exit()V

    .line 330
    const-string v3, "FrontBeautyCameraMode"

    const-string v4, "exit"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v2

    .line 340
    .local v2, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    if-nez v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 343
    .local v0, "para":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    check-cast v1, Lcom/lenovo/scg/camera/PhotoController;

    .line 346
    .local v1, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 348
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->reset()V

    goto :goto_0

    .line 351
    :cond_2
    const-string/jumbo v3, "stub.exit"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 353
    const-string/jumbo v3, "stub.exit"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 356
    const-string v3, "closeBeautyCallBack"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->closeBeautyCallBack()V

    .line 358
    const-string v3, "closeBeautyCallBack"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    if-eqz v3, :cond_0

    .line 364
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->uninitFaceDetect()V

    .line 365
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    goto :goto_0
.end method

.method protected getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getSavePicNeedMirror()Z
    .locals 5

    .prologue
    .line 496
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_mirror"

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0f002a

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "value":Ljava/lang/String;
    const-string v1, "FrontBeautyCameraMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSavePicNeedMirror value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSavePicNeedTrim11()Z
    .locals 4

    .prologue
    .line 480
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    check-cast v1, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSettingStatusReader()Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v0

    .line 481
    .local v0, "isSettingTrim11":Z
    const-string v1, "FrontBeautyCameraMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSavePicNeedTrim11 value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return v0
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    .line 293
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v0

    .line 294
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mIsSupportZSD:Z

    .line 296
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v1

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->exit()V

    .line 464
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeforeTakePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->onBeforeTakePicture()V

    .line 238
    const-string v0, "FrontBeautyCameraMode"

    const-string/jumbo v1, "onBeforeTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V

    .line 240
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 241
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public openBeautyCallBack()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 300
    const-string v2, "FrontBeautyCameraMode"

    const-string/jumbo v3, "openBeautyCallBack()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mRegistered:Z

    if-nez v2, :cond_2

    .line 307
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mRegistered:Z

    .line 308
    new-instance v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mPreviewCallback:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;

    .line 309
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mPreviewCallback:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->addPreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 310
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setSmileLevelDetectOn()V

    .line 314
    :cond_2
    const/4 v0, 0x0

    .line 315
    .local v0, "isZSD":Z
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->isSupportOneShot(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mIsOneShot:Z

    .line 317
    const-string v2, "FrontBeautyCameraMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsOneShot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mIsOneShot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isZSD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-boolean v2, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mIsOneShot:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-nez v2, :cond_0

    .line 319
    new-instance v2, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 320
    new-instance v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 321
    .local v1, "para1":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    iput-boolean v5, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    .line 322
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mtool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 459
    return-void
.end method
