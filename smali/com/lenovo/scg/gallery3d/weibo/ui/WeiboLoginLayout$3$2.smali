.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$2;
.super Ljava/lang/Object;
.source "WeiboLoginLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$2;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 220
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 221
    return-void
.end method
