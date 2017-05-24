.class public Lcom/alipay/code/scansdk/decode/DecoderResult;
.super Ljava/lang/Object;
.source "DecoderResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;
    }
.end annotation


# static fields
.field public static final PROCESS_REQ:I = 0x79f4

.field private static sCodeSubTypeMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x7af5a8d381fe9b0bL


# instance fields
.field private mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult;->sCodeSubTypeMap:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult;->sCodeSubTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EAN13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult;->sCodeSubTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EAN8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult;->sCodeSubTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UPC-A"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult;->sCodeSubTypeMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UPC-E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult;->sCodeSubTypeMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE39"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult;->sCodeSubTypeMap:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult;->sCodeSubTypeMap:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ITF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 0
    .param p1, "decodeResult"    # Lcom/etao/kaka/decode/DecodeResult;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/alipay/code/scansdk/decode/DecoderResult;->mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;

    .line 47
    return-void
.end method

.method private getBarCodeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "subType"    # I

    .prologue
    .line 50
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult;->sCodeSubTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCodeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/code/scansdk/decode/DecoderResult;->mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;

    iget-object v0, v0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeType()Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/code/scansdk/decode/DecoderResult;->mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;

    iget v0, v0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/code/scansdk/decode/DecoderResult;->mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;

    iget v0, v0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 29
    :cond_0
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;->BARCODE:Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;

    .line 31
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;->QR:Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;

    goto :goto_0
.end method

.method public process(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/code/scansdk/process/ProcessException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/code/scansdk/decode/DecoderResult;->mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;

    iget v0, v0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/code/scansdk/decode/DecoderResult;->mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;

    iget v0, v0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alipay/code/scansdk/decode/DecoderResult;->mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;

    iget v0, v0, Lcom/etao/kaka/decode/DecodeResult;->subType:I

    invoke-direct {p0, v0}, Lcom/alipay/code/scansdk/decode/DecoderResult;->getBarCodeType(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/code/scansdk/decode/DecoderResult;->mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;

    iget-object v1, v1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/code/scansdk/process/CodeHandler;->handleBarCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/alipay/code/scansdk/decode/DecoderResult;->mDecodeResult:Lcom/etao/kaka/decode/DecodeResult;

    iget-object v0, v0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/code/scansdk/process/CodeHandler;->handleQrCode(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
