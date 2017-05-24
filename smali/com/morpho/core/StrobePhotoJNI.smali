.class public Lcom/morpho/core/StrobePhotoJNI;
.super Ljava/lang/Object;
.source "StrobePhotoJNI.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Morpho Strobe Photo JNI"


# instance fields
.field private mNativeObject:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    :try_start_0
    const-string/jumbo v1, "scg_strobe_photo_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 15
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 16
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "Morpho Strobe Photo JNI"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const-string v1, "Morpho Strobe Photo JNI"

    const-string v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

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

.method private final native finalize(I)V
.end method

.method private final native getObjectImage(IILjava/nio/ByteBuffer;II)I
.end method

.method private final native getObjectRect(II[III)I
.end method

.method private final native getOutputImage(ILjava/nio/ByteBuffer;)I
.end method

.method private final native getProcessImageList(I[I)I
.end method

.method private final native getSelectImage(ILjava/nio/ByteBuffer;)I
.end method

.method private final native getTotalAreaNumber(I[I)I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/morpho/core/StrobePhotoJNI;->getVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final native getVersion(I)Ljava/lang/String;
.end method

.method private final native initialize(IIIIILjava/lang/String;I)I
.end method

.method private final native setAreaAlpha(III)I
.end method

.method private final native setBorderVisibility(IIZ)I
.end method

.method private final native setNonDisplayAreaVisibility(IZ)I
.end method

.method private final native setOutputImage(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
.end method

.method private final native start(I)I
.end method

.method private final native stopPreview(I)I
.end method

.method private final native touchXY(ILjava/nio/ByteBuffer;[III)I
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "input_image"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 102
    const/high16 v0, -0x80000000

    .line 103
    .local v0, "ret":I
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v2, :cond_0

    .line 104
    const-string v2, "Morpho Strobe Photo JNI"

    const-string v3, "StrobePhoto cannot add Image !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 111
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 108
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v2, p1}, Lcom/morpho/core/StrobePhotoJNI;->addImage(ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 109
    const-string v2, "Morpho Strobe Photo JNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StrobePhoto addImage() ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 111
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public detect(I)I
    .locals 5
    .param p1, "base_frame"    # I

    .prologue
    .line 128
    const/high16 v0, -0x80000000

    .line 129
    .local v0, "ret":I
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v2, :cond_0

    .line 130
    const-string v2, "Morpho Strobe Photo JNI"

    const-string v3, "StrobePhoto cannot detect !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 137
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 134
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v2, p1}, Lcom/morpho/core/StrobePhotoJNI;->detect(II)I

    move-result v0

    .line 135
    const-string v2, "Morpho Strobe Photo JNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StrobePhoto detect() ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 137
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v0}, Lcom/morpho/core/StrobePhotoJNI;->finalize(I)V

    .line 201
    const-string v0, "Morpho Strobe Photo JNI"

    const-string v1, "ObjEraser2 finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v0}, Lcom/morpho/core/StrobePhotoJNI;->deleteNativeObject(I)V

    .line 204
    return-void
.end method

.method public getObjectImage(ILjava/nio/ByteBuffer;II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "image"    # Ljava/nio/ByteBuffer;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 165
    const/high16 v6, -0x80000000

    .line 166
    .local v6, "ret":I
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v0, :cond_0

    move v7, v6

    .line 172
    .end local v6    # "ret":I
    .local v7, "ret":I
    :goto_0
    return v7

    .line 170
    .end local v7    # "ret":I
    .restart local v6    # "ret":I
    :cond_0
    iget v1, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/morpho/core/StrobePhotoJNI;->getObjectImage(IILjava/nio/ByteBuffer;II)I

    move-result v6

    .line 171
    const-string v0, "Morpho Strobe Photo JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StrobePhoto getObjectImage() ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 172
    .end local v6    # "ret":I
    .restart local v7    # "ret":I
    goto :goto_0
.end method

.method public getObjectRect(I[III)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "rect"    # [I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 154
    const/high16 v6, -0x80000000

    .line 155
    .local v6, "ret":I
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v0, :cond_0

    move v7, v6

    .line 161
    .end local v6    # "ret":I
    .local v7, "ret":I
    :goto_0
    return v7

    .line 159
    .end local v7    # "ret":I
    .restart local v6    # "ret":I
    :cond_0
    iget v1, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/morpho/core/StrobePhotoJNI;->getObjectRect(II[III)I

    move-result v6

    .line 160
    const-string v0, "Morpho Strobe Photo JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StrobePhoto getObjectRect() ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 161
    .end local v6    # "ret":I
    .restart local v7    # "ret":I
    goto :goto_0
.end method

.method public getProcessImageList([I)I
    .locals 2
    .param p1, "index"    # [I

    .prologue
    .line 71
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v0, :cond_0

    .line 72
    const-string v0, "Morpho Strobe Photo JNI"

    const-string v1, "StrobePhoto jni is not existed !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, -0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v0, p1}, Lcom/morpho/core/StrobePhotoJNI;->getProcessImageList(I[I)I

    move-result v0

    goto :goto_0
.end method

.method public getSelectImage(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "select_image"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 141
    const/high16 v0, -0x80000000

    .line 142
    .local v0, "ret":I
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v2, :cond_0

    move v1, v0

    .line 149
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 146
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v2, p1}, Lcom/morpho/core/StrobePhotoJNI;->getSelectImage(ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 147
    const-string v2, "Morpho Strobe Photo JNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StrobePhoto getSelectImage() ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 149
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public getTotalAreaNumber([I)I
    .locals 2
    .param p1, "alpha"    # [I

    .prologue
    .line 62
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v0, :cond_0

    .line 63
    const-string v0, "Morpho Strobe Photo JNI"

    const-string v1, "StrobePhoto jni is not existed !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, -0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v0, p1}, Lcom/morpho/core/StrobePhotoJNI;->getTotalAreaNumber(I[I)I

    move-result v0

    goto :goto_0
.end method

.method public initialize(IIIILjava/lang/String;I)I
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "preview_width"    # I
    .param p4, "preview_height"    # I
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "max_num_of_images"    # I

    .prologue
    .line 28
    const-string v0, "Morpho Strobe Photo JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StrobePhoto version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/morpho/core/StrobePhotoJNI;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/high16 v8, -0x80000000

    .line 31
    .local v8, "ret":I
    invoke-direct {p0}, Lcom/morpho/core/StrobePhotoJNI;->createNativeObject()I

    move-result v0

    iput v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    .line 32
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v0, :cond_0

    .line 33
    const v0, -0x7ffffffc

    .line 42
    :goto_0
    return v0

    .line 36
    :cond_0
    iget v1, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/morpho/core/StrobePhotoJNI;->initialize(IIIIILjava/lang/String;I)I

    move-result v8

    .line 37
    const-string v0, "Morpho Strobe Photo JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StrobePhoto initialize() ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v0}, Lcom/morpho/core/StrobePhotoJNI;->start(I)I

    move-result v8

    .line 40
    const-string v0, "Morpho Strobe Photo JNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StrobePhoto start() ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 42
    goto :goto_0
.end method

.method public setAreaAlpha(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 92
    const/high16 v0, -0x80000000

    .line 93
    .local v0, "ret":I
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v2, :cond_0

    .line 94
    const-string v2, "Morpho Strobe Photo JNI"

    const-string v3, "StrobePhoto jni is not existed !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 98
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 97
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v2, p1, p2}, Lcom/morpho/core/StrobePhotoJNI;->setAreaAlpha(III)I

    move-result v0

    move v1, v0

    .line 98
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public setBorderVisibility(IZ)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "is_visible"    # Z

    .prologue
    .line 80
    const/high16 v0, -0x80000000

    .line 81
    .local v0, "ret":I
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v2, :cond_0

    .line 82
    const-string v2, "Morpho Strobe Photo JNI"

    const-string v3, "StrobePhoto jni is not existed !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 87
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 86
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v2, p1, p2}, Lcom/morpho/core/StrobePhotoJNI;->setBorderVisibility(IIZ)I

    move-result v0

    move v1, v0

    .line 87
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public setNonDisplayAreaVisibility(Z)I
    .locals 4
    .param p1, "is_visible"    # Z

    .prologue
    .line 51
    const/high16 v0, -0x80000000

    .line 52
    .local v0, "ret":I
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v2, :cond_0

    .line 53
    const-string v2, "Morpho Strobe Photo JNI"

    const-string v3, "StrobePhoto jni is not existed !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 57
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 56
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v2, p1}, Lcom/morpho/core/StrobePhotoJNI;->setNonDisplayAreaVisibility(IZ)I

    move-result v0

    move v1, v0

    .line 57
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public setOutputImage(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "input_image"    # Ljava/nio/ByteBuffer;
    .param p3, "output_image"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 115
    const/high16 v0, -0x80000000

    .line 116
    .local v0, "ret":I
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    if-nez v2, :cond_0

    .line 117
    const-string v2, "Morpho Strobe Photo JNI"

    const-string v3, "StrobePhoto cannot setOutputImage !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 124
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 121
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget v2, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/morpho/core/StrobePhotoJNI;->setOutputImage(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 122
    const-string v2, "Morpho Strobe Photo JNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StrobePhoto setOutputImage ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 124
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public stopPreview()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/morpho/core/StrobePhotoJNI;->mNativeObject:I

    invoke-direct {p0, v0}, Lcom/morpho/core/StrobePhotoJNI;->stopPreview(I)I

    move-result v0

    return v0
.end method
