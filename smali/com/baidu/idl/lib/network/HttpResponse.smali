.class public abstract Lcom/baidu/idl/lib/network/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field public static final FAILED:I = 0x58

.field public static final LOGIN_ERROR:I = -0x2

.field public static final NETWORK_ERROR:I = -0x1

.field public static final OK:I = 0x0

.field public static final SESSION_KEY_INVALID:I = 0x6e

.field public static final UNLAWFULNESS_WORD_ERROR:I = 0x6a


# instance fields
.field public final SUCCEDD_RESULT:Ljava/lang/String;

.field public error:I

.field protected errorMsg:Ljava/lang/String;

.field protected mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>([BLjava/lang/Object;)V
    .locals 1
    .param p1, "rst"    # [B
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "ok"

    iput-object v0, p0, Lcom/baidu/idl/lib/network/HttpResponse;->SUCCEDD_RESULT:Ljava/lang/String;

    .line 21
    if-nez p1, :cond_0

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/idl/lib/network/HttpResponse;->error:I

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iput-object p2, p0, Lcom/baidu/idl/lib/network/HttpResponse;->mTag:Ljava/lang/Object;

    goto :goto_0
.end method
