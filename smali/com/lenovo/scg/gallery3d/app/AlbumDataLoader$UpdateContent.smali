.class Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mUpdateInfo:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;)V
    .locals 0
    .param p2, "info"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;

    .line 310
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 314
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->mUpdateInfo:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;

    .line 315
    .local v3, "info":Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    iget-wide v10, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSourceVersion:J
    invoke-static {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$602(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;J)J

    .line 316
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget v10, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    if-eq v9, v10, :cond_2

    .line 317
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    iget v10, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$702(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;I)I

    .line 318
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-interface {v9, v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;->onSizeChanged(I)V

    .line 319
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1000(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    if-le v9, v10, :cond_1

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I
    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1002(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;I)I

    .line 320
    :cond_1
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1200(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    if-le v9, v10, :cond_2

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1202(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;I)I

    .line 323
    :cond_2
    iget-object v6, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 325
    .local v6, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    const-wide/16 v10, -0x1

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$202(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;J)J

    .line 326
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 327
    :cond_3
    iget v9, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v9, :cond_4

    .line 328
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    iget-wide v10, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$202(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;J)J

    .line 329
    const-string v9, "AlbumDataAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loading failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mFailedVersion:J
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$200(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_4
    return-object v14

    .line 333
    :cond_5
    iget v9, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$900(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 334
    .local v7, "start":I
    iget v9, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1000(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 336
    .local v0, "end":I
    move v1, v7

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 337
    rem-int/lit16 v2, v1, 0x3e8

    .line 338
    .local v2, "index":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSetVersion:[J
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$800(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    iget-wide v10, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    aput-wide v10, v9, v2

    .line 339
    iget v9, v3, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    sub-int v9, v1, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 340
    .local v8, "updateItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v8, :cond_6

    .line 341
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    .line 342
    .local v4, "itemVersion":J
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mItemVersion:[J
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1300(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    aget-wide v10, v9, v2

    cmp-long v9, v10, v4

    if-eqz v9, :cond_6

    .line 343
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mItemVersion:[J
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1300(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)[J

    move-result-object v9

    aput-wide v4, v9, v2

    .line 344
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1400(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v8, v9, v2

    .line 345
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveStart:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1500(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    if-lt v1, v9, :cond_6

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveEnd:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1200(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 346
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;->onContentChanged(I)V

    .line 336
    .end local v4    # "itemVersion":J
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
