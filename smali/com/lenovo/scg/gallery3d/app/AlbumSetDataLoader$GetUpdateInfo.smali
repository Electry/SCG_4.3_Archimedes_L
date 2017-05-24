.class Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;J)V
    .locals 0
    .param p2, "version"    # J

    .prologue
    .line 284
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    .line 286
    return-void
.end method

.method private getInvalidIndex(J)I
    .locals 9
    .param p1, "version"    # J

    .prologue
    .line 289
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$400(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v4

    .line 290
    .local v4, "setVersion":[J
    array-length v2, v4

    .line 291
    .local v2, "length":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentStart:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$500(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)I

    move-result v0

    .local v0, "i":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$600(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 292
    rem-int v1, v0, v2

    .line 293
    .local v1, "index":I
    rem-int v5, v0, v2

    aget-wide v6, v4, v5

    cmp-long v5, v6, p1

    if-eqz v5, :cond_0

    .line 295
    .end local v0    # "i":I
    .end local v1    # "index":I
    :goto_1
    return v0

    .line 291
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "index":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public call()Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->getInvalidIndex(J)I

    move-result v0

    .line 301
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->mVersion:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move-object v1, v2

    .line 306
    :goto_0
    return-object v1

    .line 302
    :cond_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;)V

    .line 303
    .local v1, "info":Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 304
    iput v0, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 305
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)I

    move-result v2

    iput v2, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;->call()Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
