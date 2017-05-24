.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;
.super Ljava/lang/Object;
.source "FriendDetailWbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setEmptyView(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$emptybtn:Landroid/widget/Button;

.field final synthetic val$emptytext:Landroid/widget/TextView;

.field final synthetic val$imgHint:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->val$emptytext:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->val$emptybtn:Landroid/widget/Button;

    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->val$imgHint:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 1242
    const-string/jumbo v0, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v1, "onClick, get data again!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->val$emptytext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->val$context:Landroid/content/Context;

    const v2, 0x7f0f064d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->val$emptytext:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->val$emptybtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->val$imgHint:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadData()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    .line 1248
    return-void
.end method
