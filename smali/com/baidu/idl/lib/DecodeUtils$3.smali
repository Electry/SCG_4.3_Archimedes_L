.class Lcom/baidu/idl/lib/DecodeUtils$3;
.super Ljava/lang/Object;
.source "DecodeUtils.java"

# interfaces
.implements Lcom/baidu/idl/lib/network/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/idl/lib/DecodeUtils;->bookInterface(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/baidu/idl/lib/OnDecodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mDecodeListener:Lcom/baidu/idl/lib/OnDecodeListener;


# direct methods
.method constructor <init>(Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/idl/lib/DecodeUtils$3;->val$mDecodeListener:Lcom/baidu/idl/lib/OnDecodeListener;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Lcom/baidu/idl/lib/network/HttpResponse;)V
    .locals 3
    .param p1, "resp"    # Lcom/baidu/idl/lib/network/HttpResponse;

    .prologue
    .line 286
    move-object v1, p1

    check-cast v1, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;

    .line 288
    .local v1, "ocrRes":Lcom/baidu/idl/lib/network/entity/IDLBookResponse;
    :try_start_0
    iget-object v2, p0, Lcom/baidu/idl/lib/DecodeUtils$3;->val$mDecodeListener:Lcom/baidu/idl/lib/OnDecodeListener;

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/baidu/idl/lib/DecodeUtils$3;->val$mDecodeListener:Lcom/baidu/idl/lib/OnDecodeListener;

    invoke-interface {v2, v1}, Lcom/baidu/idl/lib/OnDecodeListener;->onDecodeResponse(Lcom/baidu/idl/lib/DecodeResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
