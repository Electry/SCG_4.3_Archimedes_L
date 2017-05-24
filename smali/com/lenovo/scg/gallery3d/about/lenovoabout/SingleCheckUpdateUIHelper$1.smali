.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$1;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;
.source "SingleCheckUpdateUIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    invoke-direct {p0, p2, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/File;)V
    .locals 1
    .param p1, "downloaded"    # Ljava/io/File;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->refreshUpdateViews()V

    .line 61
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->refreshUpdateViews()V

    .line 56
    return-void
.end method
