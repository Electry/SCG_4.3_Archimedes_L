.class public Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLruMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mWeakMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "capacity"    # I

    .prologue
    .line 50
    .local p0, "this":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mWeakMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$1;

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$1;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;IFZI)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mLruMap:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method private cleanUpWeakMap()V
    .locals 3

    .prologue
    .line 83
    .local p0, "this":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache<TK;TV;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;

    .line 84
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mWeakMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry<TK;TV;>;"
    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;

    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry<TK;TV;>;"
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->cleanUpWeakMap()V

    .line 68
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 69
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 71
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    monitor-exit p0

    return-object v1

    .line 70
    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;

    .line 71
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry<TK;TV;>;"
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 67
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry<TK;TV;>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->cleanUpWeakMap()V

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mWeakMap:Ljava/util/HashMap;

    new-instance v2, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, p2, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 75
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry;, "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
