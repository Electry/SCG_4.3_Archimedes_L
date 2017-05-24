.class public Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;
.super Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.source "CLeImageJPEGTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$1;,
        Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "CLeImageTransformer"

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TAG:Ljava/lang/String;

    .line 175
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 176
    const-string v0, "Lejpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 177
    const-string v0, "Leskia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 178
    const-string v0, "LeImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 179
    const-string v0, "LeImageJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    .line 12
    return-void
.end method

.method private static ConvertTransformTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    .line 35
    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$1;->$SwitchMap$com$lenovo$scg$LeImageJI$CLeImageJPEGTransformer$eTransformType:[I

    invoke-virtual {p0}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    return v0

    .line 42
    :pswitch_1
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 46
    :pswitch_2
    const/4 v0, 0x2

    .line 47
    goto :goto_0

    .line 49
    :pswitch_3
    const/4 v0, 0x3

    .line 50
    goto :goto_0

    .line 52
    :pswitch_4
    const/4 v0, 0x4

    .line 53
    goto :goto_0

    .line 56
    :pswitch_5
    const/4 v0, 0x5

    .line 57
    goto :goto_0

    .line 59
    :pswitch_6
    const/4 v0, 0x6

    .line 60
    goto :goto_0

    .line 62
    :pswitch_7
    const/4 v0, 0x7

    .line 63
    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private native CropJpegC(J[BIIIIII)[B
.end method

.method private native TransformJpegToJpegC(J[BIIII)[B
.end method


# virtual methods
.method protected native ConstructC()J
.end method

.method public CropJpeg([BIIIIII)[B
    .locals 11

    .prologue
    .line 124
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->CropJpegC(J[BIIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method protected native DestructC(J)V
.end method

.method public TransformJpegToJpeg([BIIILcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)[B
    .locals 9

    .prologue
    .line 90
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "src0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "m_handleC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->m_handleC:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->m_handleC:J

    invoke-static {p5}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->ConvertTransformTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)I

    move-result v8

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TransformJpegToJpegC(J[BIIII)[B

    move-result-object v0

    return-object v0
.end method
