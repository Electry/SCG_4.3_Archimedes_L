.class public Lcom/baidu/idl/lib/network/entity/IDLCDResponse;
.super Lcom/baidu/idl/lib/network/HttpJSONResponse;
.source "IDLCDResponse.java"

# interfaces
.implements Lcom/baidu/idl/lib/DecodeResponse;


# instance fields
.field protected err_code:Ljava/lang/String;

.field public err_id:I

.field public err_msg:Ljava/lang/String;

.field public mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/idl/lib/entity/CDEntity;",
            ">;"
        }
    .end annotation
.end field

.field public querysign:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/Object;)V
    .locals 2
    .param p1, "rst"    # [B
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/baidu/idl/lib/network/HttpJSONResponse;-><init>([BLjava/lang/Object;)V

    .line 28
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget v0, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->error:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_2

    .line 29
    :cond_1
    const/16 v0, 0x2713

    iput v0, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->err_id:I

    .line 30
    const-string/jumbo v0, "\u7f51\u7edc\u9519\u8bef"

    iput-object v0, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->err_msg:Ljava/lang/String;

    .line 32
    :cond_2
    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v2, "YTL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7f51\u7edc\u8bf7\u6c42\u7ed3\u679c: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "err_code"

    invoke-static {p1, v2}, Lcom/baidu/idl/lib/utils/JSonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->err_code:Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->err_code:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->changeErrorID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->err_id:I

    .line 40
    const-string v2, "err_msg"

    invoke-static {p1, v2}, Lcom/baidu/idl/lib/utils/JSonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->err_msg:Ljava/lang/String;

    .line 41
    const-string/jumbo v2, "querysign"

    invoke-static {p1, v2}, Lcom/baidu/idl/lib/utils/JSonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->querysign:Ljava/lang/String;

    .line 43
    const-string v2, "data"

    invoke-static {p1, v2}, Lcom/baidu/idl/lib/utils/JSonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    .local v0, "dataJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->mDataList:Ljava/util/List;

    .line 48
    new-instance v1, Lcom/baidu/idl/lib/entity/CDEntity;

    invoke-direct {v1}, Lcom/baidu/idl/lib/entity/CDEntity;-><init>()V

    .line 49
    .local v1, "mCDEntity":Lcom/baidu/idl/lib/entity/CDEntity;
    invoke-virtual {v1, v0}, Lcom/baidu/idl/lib/entity/CDEntity;->builder(Lorg/json/JSONObject;)V

    .line 50
    iget-object v2, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v1    # "mCDEntity":Lcom/baidu/idl/lib/entity/CDEntity;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    const-string v2, ""

    .line 57
    .local v2, "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->mDataList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 63
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[err_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->err_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " err_msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->err_msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->querysign:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " querysign:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->querysign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " mDataList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    return-object v1

    .line 58
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/idl/lib/entity/CDEntity;

    .line 59
    .local v0, "mCDEntity":Lcom/baidu/idl/lib/entity/CDEntity;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/idl/lib/entity/CDEntity;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
