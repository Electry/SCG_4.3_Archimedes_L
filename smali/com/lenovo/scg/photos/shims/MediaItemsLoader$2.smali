.class Lcom/lenovo/scg/photos/shims/MediaItemsLoader$2;
.super Ljava/lang/Object;
.source "MediaItemsLoader.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/shims/MediaItemsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/shims/MediaItemsLoader;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/shims/MediaItemsLoader;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/photos/shims/MediaItemsLoader$2;->this$0:Lcom/lenovo/scg/photos/shims/MediaItemsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaItemsLoader$2;->this$0:Lcom/lenovo/scg/photos/shims/MediaItemsLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/shims/MediaItemsLoader;->onContentChanged()V

    .line 65
    return-void
.end method
