.class public Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
.super Ljava/lang/Object;
.source "WeiboPicURL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bmiddle:Ljava/lang/String;

.field private large:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mThumbnail"    # Ljava/lang/String;
    .param p2, "mBmiddle"    # Ljava/lang/String;
    .param p3, "mLarge"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->thumbnail:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->bmiddle:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->large:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getBmiddle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->bmiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->large:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public setAllURLFromLargeUrl(Ljava/lang/String;)V
    .locals 9
    .param p1, "largeURL"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->large:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "largetmp":Ljava/lang/String;
    const-string v5, "large"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "result":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "thumbnail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "thumbnail":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bmiddle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "bmiddle":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "large"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "large":Ljava/lang/String;
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->thumbnail:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->bmiddle:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->large:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setAllURLFromMiddleUrl(Ljava/lang/String;)V
    .locals 9
    .param p1, "middleUrl"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "middle":Ljava/lang/String;
    const-string v5, "bmiddle"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "result":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "thumbnail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "thumbnail":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bmiddle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "bmiddle":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "large"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "large":Ljava/lang/String;
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->thumbnail:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->bmiddle:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->large:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setAllURLFromThumbNailUrl(Ljava/lang/String;)V
    .locals 8
    .param p1, "mThumbNail"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 37
    .local v3, "thumbnail":Ljava/lang/String;
    const-string/jumbo v4, "thumbnail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "result":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bmiddle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "bmiddle":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "large"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "large":Ljava/lang/String;
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->thumbnail:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->bmiddle:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->large:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setBmiddle(Ljava/lang/String;)V
    .locals 0
    .param p1, "bmiddle"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->bmiddle:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setLarge(Ljava/lang/String;)V
    .locals 0
    .param p1, "large"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->large:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->thumbnail:Ljava/lang/String;

    .line 92
    return-void
.end method
