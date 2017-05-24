.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem$1;
.super Ljava/lang/Object;
.source "ScreenGroupItem.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker$InvokeNonParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
