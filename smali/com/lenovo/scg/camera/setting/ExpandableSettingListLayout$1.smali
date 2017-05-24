.class Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$1;
.super Ljava/lang/Object;
.source "ExpandableSettingListLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$1;->this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$1;->this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 107
    return-void
.end method
