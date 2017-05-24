.class Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;
.super Ljava/lang/Object;
.source "ExpandableViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderParent"
.end annotation


# instance fields
.field arrow:Landroid/widget/ImageView;

.field menu_status:Landroid/widget/ImageView;

.field parameters:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter$ViewHolderParent;->this$0:Lcom/lenovo/scg/camera/setting/ExpandableViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
