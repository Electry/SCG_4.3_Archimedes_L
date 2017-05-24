.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;
.super Ljava/lang/Object;
.source "ContactsUIHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 125
    .local v0, "tablet_land":Z
    if-eqz v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f09a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "num"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->getListItemVisibleNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "words":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mTalkbackHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;->say(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    packed-switch v2, :pswitch_data_0

    .line 158
    :goto_1
    :pswitch_0
    return-void

    .line 128
    .end local v1    # "words":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f099b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "words":Ljava/lang/String;
    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->performClick()Z

    goto :goto_1

    .line 140
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->performClick()Z

    goto :goto_1

    .line 143
    :pswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->performClick()Z

    goto :goto_1

    .line 146
    :pswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->performClick()Z

    goto :goto_1

    .line 149
    :pswitch_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->performClick()Z

    goto :goto_1

    .line 152
    :pswitch_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->performClick()Z

    goto :goto_1

    .line 155
    :pswitch_7
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->displayList(I)V

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
