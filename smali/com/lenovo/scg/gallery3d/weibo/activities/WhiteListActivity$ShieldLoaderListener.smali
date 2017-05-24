.class Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;
.super Ljava/lang/Object;
.source "WhiteListActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShieldLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 193
    const-string v0, "WhiteListActivity"

    const-string v1, "ShieldLoaderListener#onCreateLoader."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    .line 202
    const-string v2, "WhiteListActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShieldLoaderListener#onLoadFinished, cursor = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->start()V

    .line 233
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 234
    const-string v0, "WhiteListActivity"

    const-string v2, "load id is not LOAD_NOT_ALL, startLoader!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoader(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Landroid/os/Bundle;)V

    .line 238
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 202
    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "WhiteListActivity"

    const-string v1, "ShieldLoaderListener#onLoaderReset."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method
