.class public Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;
.super Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.source "CLeImageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$1;,
        Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "CLeImageEncoder"

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->TAG:Ljava/lang/String;

    .line 212
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 213
    const-string v0, "Lejpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 214
    const-string v0, "Leskia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 215
    const-string v0, "LeImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 216
    const-string v0, "LeImageJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    .line 25
    return-void
.end method

.method private static ConvertEncodeTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)I
    .locals 2

    .prologue
    .line 47
    .line 48
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$1;->$SwitchMap$com$lenovo$scg$LeImageJI$CLeImageEncoder$eEncodeType:[I

    invoke-virtual {p0}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    const/4 v0, -0x1

    .line 61
    :goto_0
    return v0

    .line 51
    :pswitch_0
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v0, 0x2

    .line 56
    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private native EncodeBitmapC(JLandroid/graphics/Bitmap;II)[B
.end method

.method private native EncodeBufferC(J[BIIII)[B
.end method

.method private native EncodeFileC(J[BIIILjava/lang/String;I)I
.end method


# virtual methods
.method protected native ConstructC()J
.end method

.method protected native DestructC(J)V
.end method

.method public EncodeBitmap(Landroid/graphics/Bitmap;ILcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)[B
    .locals 7

    .prologue
    .line 128
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->m_handleC:J

    invoke-static {p3}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->ConvertEncodeTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->EncodeBitmapC(JLandroid/graphics/Bitmap;II)[B

    move-result-object v0

    return-object v0
.end method

.method public EncodeBuffer([BIIILcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)[B
    .locals 9

    .prologue
    .line 84
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->m_handleC:J

    invoke-static {p5}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->ConvertEncodeTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)I

    move-result v8

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->EncodeBufferC(J[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public EncodeFile([BIIILjava/lang/String;Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)I
    .locals 10

    .prologue
    .line 109
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->m_handleC:J

    invoke-static/range {p6 .. p6}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->ConvertEncodeTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)I

    move-result v9

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->EncodeFileC(J[BIIILjava/lang/String;I)I

    move-result v0

    return v0
.end method
