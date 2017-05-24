.class public Lcn/jingling/lib/utils/ArraysUtil;
.super Ljava/lang/Object;
.source "ArraysUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyOf([I)[I
    .locals 3
    .param p0, "src"    # [I

    .prologue
    .line 6
    array-length v2, p0

    new-array v0, v2, [I

    .line 7
    .local v0, "dst":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 10
    return-object v0

    .line 8
    :cond_0
    aget v2, p0, v1

    aput v2, v0, v1

    .line 7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/String;)[I
    .locals 3
    .param p0, "src"    # [Ljava/lang/String;

    .prologue
    .line 14
    array-length v2, p0

    new-array v0, v2, [I

    .line 15
    .local v0, "dst":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 18
    return-object v0

    .line 16
    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 2
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "split"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "strArray":[Ljava/lang/String;
    invoke-static {v0}, Lcn/jingling/lib/utils/ArraysUtil;->copyOf([Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method public static toString([ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # [I
    .param p1, "split"    # Ljava/lang/String;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 23
    :cond_0
    const-string v2, ""

    .line 34
    :goto_0
    return-object v2

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 28
    :cond_2
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
