.class Lcom/lenovo/scg/gallery3d/data/LocationClustering$2;
.super Ljava/lang/Object;
.source "LocationClustering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/LocationClustering;->run(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/LocationClustering;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/LocationClustering;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$2;->this$0:Lcom/lenovo/scg/gallery3d/data/LocationClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$2;->this$0:Lcom/lenovo/scg/gallery3d/data/LocationClustering;

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->access$100(Lcom/lenovo/scg/gallery3d/data/LocationClustering;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0680

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    return-void
.end method
