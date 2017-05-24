.class public Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer;
.super Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.source "CLeImageDataTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$1;,
        Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "CLeImageTransformer"

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer;->TAG:Ljava/lang/String;

    .line 91
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 92
    const-string v0, "Lejpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    const-string v0, "Leskia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 94
    const-string v0, "LeImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    const-string v0, "LeImageJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    .line 10
    return-void
.end method

.method private static ConvertTransformTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    .line 21
    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$1;->$SwitchMap$com$lenovo$scg$LeImageJI$CLeImageDataTransformer$eTransformImgDataType:[I

    invoke-virtual {p0}, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 37
    :goto_0
    :pswitch_0
    return v0

    .line 28
    :pswitch_1
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 32
    :pswitch_2
    const/4 v0, 0x2

    .line 33
    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private native LeMirrorBufferC(J[BIIII)[B
.end method


# virtual methods
.method protected native ConstructC()J
.end method

.method protected native DestructC(J)V
.end method

.method public MirrorYUVDataBuffer([BIIILcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;)[B
    .locals 9

    .prologue
    .line 50
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer;->m_handleC:J

    invoke-static {p5}, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer;->ConvertTransformTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;)I

    move-result v8

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer;->LeMirrorBufferC(J[BIIII)[B

    move-result-object v0

    return-object v0
.end method
