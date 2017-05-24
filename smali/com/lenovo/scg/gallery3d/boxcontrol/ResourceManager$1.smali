.class Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;
.super Ljava/lang/Object;
.source "ResourceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->loadImage(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

.field final synthetic val$defaultImage:Landroid/graphics/drawable/Drawable;

.field final synthetic val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

.field final synthetic val$listener:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$defaultImage:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$listener:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "box_control_resourcemanager_load_image_thread_pool"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 121
    .local v3, "mBmpThumbnail":Landroid/graphics/Bitmap;
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBmpThumbnail = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-nez v3, :cond_0

    .line 125
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setNotCanBeSelected(Z)V

    .line 134
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->lock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 135
    if-eqz v3, :cond_1

    .line 136
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mIconCache:Ljava/util/Map;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->ctx:Landroid/content/Context;
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mResourceRecord:Ljava/util/Map;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 142
    .local v2, "ls":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;>;"
    if-nez v2, :cond_2

    .line 143
    const-string v4, "ResourceManager"

    const-string v5, "ls = null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$listener:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->ctx:Landroid/content/Context;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;->onFinish(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;)V

    .line 153
    :goto_2
    return-void

    .line 127
    .end local v2    # "ls":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;>;"
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setNotCanBeSelected(Z)V

    goto :goto_0

    .line 138
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mIconCache:Ljava/util/Map;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$defaultImage:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 146
    .restart local v2    # "ls":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;>;"
    :cond_2
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ls = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

    .line 148
    .local v1, "l":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "l = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->ctx:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v4, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;->onFinish(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 151
    .end local v1    # "l":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mResourceRecord:Ljava/util/Map;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;->val$image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method
