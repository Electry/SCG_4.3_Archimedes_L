.class Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;
.super Ljava/lang/Object;
.source "ExpandableSettingListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field mIndicatorIconRes:I

.field mIndicatorKey:Ljava/lang/String;

.field mSettingBackFront:[I

.field mSettingIconids:[I

.field mSettingKeys:[Ljava/lang/String;

.field mSettingScene:[I

.field mSettingtitle:[I

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;Ljava/lang/String;I[Ljava/lang/String;[I[I[I[I)V
    .locals 0
    .param p2, "tabKey"    # Ljava/lang/String;
    .param p3, "tabNameid"    # I
    .param p4, "childKeys"    # [Ljava/lang/String;
    .param p5, "childTitles"    # [I
    .param p6, "childIconIds"    # [I
    .param p7, "backOrFront"    # [I
    .param p8, "scene"    # [I

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->this$0:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mIndicatorKey:Ljava/lang/String;

    .line 172
    iput p3, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mIndicatorIconRes:I

    .line 173
    iput-object p4, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingKeys:[Ljava/lang/String;

    .line 174
    iput-object p5, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingtitle:[I

    .line 175
    iput-object p6, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingIconids:[I

    .line 176
    iput-object p7, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingBackFront:[I

    .line 177
    iput-object p8, p0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$Holder;->mSettingScene:[I

    .line 178
    return-void
.end method
