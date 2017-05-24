.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem$1;
.super Ljava/lang/Object;
.source "StaticClassGroupItem.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker$InvokeNonParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-direct {v1, v2, p2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 20
    return-void
.end method
