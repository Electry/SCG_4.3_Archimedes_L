.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView$1;
.super Ljava/lang/Object;
.source "ListItemView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSelected(Z)V

    .line 83
    return-void
.end method
