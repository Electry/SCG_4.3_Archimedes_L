.class public Lcom/lenovo/scg/minicamera/function/decode/baidu/MiniCameraBaiduDecodeManager;
.super Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDecodeManagerBase;
.source "MiniCameraBaiduDecodeManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "MiniCameraBaiduDecodeManager"

    sput-object v0, Lcom/lenovo/scg/minicamera/function/decode/baidu/MiniCameraBaiduDecodeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDecodeManagerBase;-><init>()V

    return-void
.end method

.method public static decodeBook(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "listener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 138
    sget-object v0, Lcom/lenovo/scg/minicamera/function/decode/baidu/MiniCameraBaiduDecodeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeBook, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/idl/lib/DecodeUtils;->bookInterface(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V

    .line 156
    return-void
.end method

.method public static decodeCD(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "listener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 104
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/idl/lib/DecodeUtils;->cdInterface(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V

    .line 123
    return-void
.end method

.method public static decodeCover(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "listenerBook"    # Lcom/baidu/idl/lib/OnDecodeListener;
    .param p5, "listenerCD"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 172
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/minicamera/function/decode/baidu/MiniCameraBaiduDecodeManager;->decodeCD(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V

    .line 173
    invoke-static {p0, p1, p2, p3, p5}, Lcom/lenovo/scg/minicamera/function/decode/baidu/MiniCameraBaiduDecodeManager;->decodeBook(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V

    .line 174
    return-void
.end method

.method public static decodeOCR(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "listener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/idl/lib/DecodeUtils;->ocrInterface(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V

    .line 57
    return-void
.end method

.method public static decodeOCRTrans(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "listener"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 74
    const-string v4, "CHN"

    const-string v5, "CHN"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/baidu/idl/lib/DecodeUtils;->ocrTransInterface(Landroid/content/Context;[BIILjava/lang/String;Ljava/lang/String;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 88
    return-void
.end method
