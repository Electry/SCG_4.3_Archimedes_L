.class public Lcom/etao/kaka/decode/DecodeResult;
.super Ljava/lang/Object;
.source "DecodeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xfa5728004b6425dL


# instance fields
.field public bytes:[B

.field public height:I

.field public strCode:Ljava/lang/String;

.field public subType:I

.field public type:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "strCode"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    .line 39
    iput p2, p0, Lcom/etao/kaka/decode/DecodeResult;->subType:I

    .line 40
    iput-object p3, p0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    .line 55
    iput p2, p0, Lcom/etao/kaka/decode/DecodeResult;->subType:I

    .line 56
    iput-object p3, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    .line 57
    return-void
.end method

.method public constructor <init>(II[BIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "bytes"    # [B
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    .line 45
    iput p2, p0, Lcom/etao/kaka/decode/DecodeResult;->subType:I

    .line 46
    iput-object p3, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    .line 47
    iput p4, p0, Lcom/etao/kaka/decode/DecodeResult;->x:I

    .line 48
    iput p5, p0, Lcom/etao/kaka/decode/DecodeResult;->y:I

    .line 49
    iput p6, p0, Lcom/etao/kaka/decode/DecodeResult;->width:I

    .line 50
    iput p7, p0, Lcom/etao/kaka/decode/DecodeResult;->height:I

    .line 51
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecodeResult [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    const-string v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
