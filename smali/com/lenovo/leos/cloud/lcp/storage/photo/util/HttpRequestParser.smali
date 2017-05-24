.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/util/HttpRequestParser;
.super Ljava/lang/Object;
.source "HttpRequestParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static TruncateUrlPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strURL"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "strAllParam":Ljava/lang/String;
    const/4 v0, 0x0

    .line 39
    .local v0, "arrSplit":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 40
    const-string v2, "[?]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 42
    array-length v2, v0

    if-le v2, v3, :cond_0

    .line 43
    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    .line 44
    aget-object v1, v0, v3

    .line 48
    :cond_0
    return-object v1
.end method

.method public static URLRequest(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v2, "mapRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 61
    .local v0, "arrSplit":[Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/HttpRequestParser;->TruncateUrlPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "strUrlParam":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 81
    :cond_0
    return-object v2

    .line 66
    :cond_1
    const-string v5, "[&]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    array-length v7, v0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v0, v5

    .line 68
    .local v3, "strSplit":Ljava/lang/String;
    const/4 v1, 0x0

    .line 69
    .local v1, "arrSplitEqual":[Ljava/lang/String;
    const-string v8, "[=]"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    array-length v8, v1

    if-le v8, v10, :cond_3

    .line 73
    aget-object v8, v1, v6

    aget-object v9, v1, v10

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    :cond_3
    aget-object v8, v1, v6

    const-string v9, ""

    if-eq v8, v9, :cond_2

    .line 77
    aget-object v8, v1, v6

    const-string v9, ""

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static UrlPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "strURL"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    .local v1, "strPage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 17
    .local v0, "arrSplit":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 18
    const-string v2, "[?]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 20
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 21
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    .line 22
    aget-object v1, v0, v4

    .line 26
    :cond_0
    return-object v1
.end method
