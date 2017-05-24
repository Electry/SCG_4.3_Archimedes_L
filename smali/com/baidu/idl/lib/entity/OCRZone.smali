.class public Lcom/baidu/idl/lib/entity/OCRZone;
.super Ljava/lang/Object;
.source "OCRZone.java"


# instance fields
.field public ocrWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/idl/lib/entity/OCRWord;",
            ">;"
        }
    .end annotation
.end field

.field public zoneRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public builder(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "mJSONObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    const-string/jumbo v5, "zonerect"

    invoke-static {p1, v5}, Lcom/baidu/idl/lib/utils/JSonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, "zonerect":Ljava/lang/String;
    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "zoneStrs":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v5, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 25
    new-instance v5, Landroid/graphics/Rect;

    .line 26
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 27
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 28
    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 29
    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 25
    iput-object v5, p0, Lcom/baidu/idl/lib/entity/OCRZone;->zoneRect:Landroid/graphics/Rect;

    .line 33
    :cond_0
    const-string/jumbo v5, "result"

    invoke-static {p1, v5}, Lcom/baidu/idl/lib/utils/JSonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 34
    .local v2, "resultJSONArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/baidu/idl/lib/entity/OCRZone;->ocrWordList:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 43
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 38
    .restart local v0    # "i":I
    :cond_2
    new-instance v1, Lcom/baidu/idl/lib/entity/OCRWord;

    invoke-direct {v1}, Lcom/baidu/idl/lib/entity/OCRWord;-><init>()V

    .line 39
    .local v1, "mOCRWord":Lcom/baidu/idl/lib/entity/OCRWord;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/baidu/idl/lib/entity/OCRWord;->builder(Lorg/json/JSONObject;)V

    .line 40
    iget-object v5, p0, Lcom/baidu/idl/lib/entity/OCRZone;->ocrWordList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 47
    const-string v2, ""

    .line 48
    .local v2, "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/idl/lib/entity/OCRZone;->ocrWordList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/baidu/idl/lib/entity/OCRZone;->ocrWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 53
    :cond_0
    const-string v1, "[zoneRect="

    .line 54
    .local v1, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/idl/lib/entity/OCRZone;->zoneRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/idl/lib/entity/OCRZone;->zoneRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ocrWordList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    return-object v1

    .line 49
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/idl/lib/entity/OCRWord;

    .line 50
    .local v0, "mOCRWord":Lcom/baidu/idl/lib/entity/OCRWord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/idl/lib/entity/OCRWord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
