.class Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LittleCircleListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mAppName:Landroid/widget/TextView;

.field mIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;->this$0:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$1;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;)V

    return-void
.end method
