.class public Lcom/morpho/core/ObjectEraser2;
.super Ljava/lang/Object;
.source "ObjectEraser2.java"


# static fields
.field private static final MAX_THRESHOLD:I = 0xa

.field private static final MIN_THRESHOLD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Morpho Object Eraser2"


# instance fields
.field private base_frame:I

.field private files:[Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private height:I

.field private image_count:I

.field private mIsFirstRender:Z

.field private nativeObject:I

.field private pass:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    :try_start_0
    const-string/jumbo v1, "morpho_object_eraser2_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 28
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 29
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "Morpho Object Eraser2"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/morpho/utils/debug/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "Morpho Object Eraser2"

    const-string v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Lcom/morpho/utils/debug/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/morpho/core/ObjectEraser2;->mIsFirstRender:Z

    return-void
.end method

.method private final native addImage(ILjava/nio/ByteBuffer;)I
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method private final native detect(II)I
.end method

.method private final native finalize(I)I
.end method

.method private final native getBufferSize(IIILjava/lang/String;II)I
.end method

.method private final native getEdgePointList(I[I[II)I
.end method

.method private final native getFailureCode(I)I
.end method

.method private final native getMaskImage(ILjava/nio/ByteBuffer;)I
.end method

.method private final native getObjectLabel(IIIII)I
.end method

.method private final native getOutputImage(ILjava/nio/ByteBuffer;)I
.end method

.method private final native getPreviewImage(ILjava/nio/ByteBuffer;)I
.end method

.method private final native getRemovabilityConfidenceList(I[II)I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/morpho/core/ObjectEraser2;->getVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final native getVersion(I)Ljava/lang/String;
.end method

.method private final native initialize(IIIIIILjava/lang/String;II)I
.end method

.method private final native setArrayOfErasedObjectFlags(I[I)I
.end method

.method private final native start(I)I
.end method


# virtual methods
.method public final native addBigImageForSave(ILjava/nio/ByteBuffer;I)I
.end method

.method public addImage(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "inputImage"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 72
    iget v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v0, p1}, Lcom/morpho/core/ObjectEraser2;->addImage(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public detect(I)I
    .locals 1
    .param p1, "baseFrameIndex"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/morpho/core/ObjectEraser2;->base_frame:I

    .line 78
    iget v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v0, p1}, Lcom/morpho/core/ObjectEraser2;->detect(II)I

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 61
    iget v1, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v1}, Lcom/morpho/core/ObjectEraser2;->finalize(I)I

    move-result v0

    .line 62
    .local v0, "ret":I
    const-string v1, "Morpho Object Eraser2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjEraser2 finalize() ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/morpho/utils/debug/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget v1, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v1}, Lcom/morpho/core/ObjectEraser2;->deleteNativeObject(I)V

    .line 65
    return-void
.end method

.method public getBufferSize(IILjava/lang/String;II)I
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "image_count"    # I
    .param p5, "pass"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/morpho/core/ObjectEraser2;->createNativeObject()I

    move-result v0

    iput v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    .line 47
    iget v1, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/morpho/core/ObjectEraser2;->getBufferSize(IIILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getEdgePointList([I[I)I
    .locals 3
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .prologue
    .line 121
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 122
    const v0, -0x7fffffff

    .line 125
    :goto_0
    return v0

    .line 124
    :cond_0
    iget v1, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    array-length v2, p1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/morpho/core/ObjectEraser2;->getEdgePointList(I[I[II)I

    move-result v0

    .line 125
    .local v0, "netArraySize":I
    goto :goto_0
.end method

.method public getFailureCode()I
    .locals 2

    .prologue
    .line 82
    const/4 v0, -0x1

    .line 84
    .local v0, "failure_code":I
    iget v1, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v1}, Lcom/morpho/core/ObjectEraser2;->getFailureCode(I)I

    move-result v0

    .line 86
    return v0
.end method

.method public getMaskImage(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "maskImage"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 113
    iget v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v0, p1}, Lcom/morpho/core/ObjectEraser2;->getMaskImage(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final native getNumberOfFoundObjects(I[Landroid/graphics/Rect;)I
.end method

.method public getObjectLabel(IIII)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "preview_width"    # I
    .param p4, "preview_height"    # I

    .prologue
    .line 90
    const/4 v6, 0x0

    .line 92
    .local v6, "label":I
    iget v1, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/morpho/core/ObjectEraser2;->getObjectLabel(IIIII)I

    move-result v6

    .line 93
    const-string v0, "Morpho Object Eraser2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObjEraser2 getObjectLabel() label = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/morpho/utils/debug/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return v6
.end method

.method public getOutputImage(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "outputImage"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 129
    iget v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v0, p1}, Lcom/morpho/core/ObjectEraser2;->getOutputImage(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public getPreviewImage(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "previewImage"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 109
    iget v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v0, p1}, Lcom/morpho/core/ObjectEraser2;->getPreviewImage(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public getRemovabilityConfidenceList([I)I
    .locals 2
    .param p1, "confidence_list"    # [I

    .prologue
    .line 99
    iget v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    array-length v1, p1

    invoke-direct {p0, v0, p1, v1}, Lcom/morpho/core/ObjectEraser2;->getRemovabilityConfidenceList(I[II)I

    move-result v0

    return v0
.end method

.method public getnativeObject()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    return v0
.end method

.method public initialize(IIIIILjava/lang/String;II)I
    .locals 11
    .param p1, "bufferSize"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "preview_width"    # I
    .param p5, "preview_height"    # I
    .param p6, "format"    # Ljava/lang/String;
    .param p7, "image_count"    # I
    .param p8, "pass"    # I

    .prologue
    .line 51
    iput p2, p0, Lcom/morpho/core/ObjectEraser2;->width:I

    .line 52
    iput p3, p0, Lcom/morpho/core/ObjectEraser2;->height:I

    .line 53
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/morpho/core/ObjectEraser2;->format:Ljava/lang/String;

    .line 54
    move/from16 v0, p7

    iput v0, p0, Lcom/morpho/core/ObjectEraser2;->image_count:I

    .line 55
    move/from16 v0, p8

    iput v0, p0, Lcom/morpho/core/ObjectEraser2;->pass:I

    .line 57
    iget v2, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/morpho/core/ObjectEraser2;->initialize(IIIIIILjava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public final native prepareForSave(I[ILjava/nio/ByteBuffer;)I
.end method

.method public setArrayOfErasedObjectFlags([I)I
    .locals 4
    .param p1, "labelList"    # [I

    .prologue
    .line 103
    iget v1, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/ObjectEraser2;->setArrayOfErasedObjectFlags(I[I)I

    move-result v0

    .line 104
    .local v0, "ret":I
    const-string v1, "Morpho Object Eraser2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjEraser2 setArrayOfErasedObjectFlags() ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/morpho/utils/debug/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return v0
.end method

.method public start()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/morpho/core/ObjectEraser2;->nativeObject:I

    invoke-direct {p0, v0}, Lcom/morpho/core/ObjectEraser2;->start(I)I

    move-result v0

    return v0
.end method
