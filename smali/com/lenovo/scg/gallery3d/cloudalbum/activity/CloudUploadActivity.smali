.class public Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;
.super Landroid/app/Activity;
.source "CloudUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;
    }
.end annotation


# instance fields
.field private final GONE:I

.field private final INVISIBLE:I

.field private final VISIBLE:I

.field private char_again:Ljava/lang/CharSequence;

.field private char_current_hint:Ljava/lang/CharSequence;

.field private char_unit_b:Ljava/lang/CharSequence;

.field private char_unit_k:Ljava/lang/CharSequence;

.field private char_unit_m:Ljava/lang/CharSequence;

.field private final id_detail_again:I

.field private final id_detail_back:I

.field private final id_detail_cancel:I

.field private final id_dialog_back:I

.field private final id_dialog_bare:I

.field private final id_dialog_domain:I

.field private final id_dialog_domain_cancel:I

.field private isFinished:Z

.field private mDetailAgain:Landroid/widget/Button;

.field private mDetailBox:Landroid/view/View;

.field private mDetailCancel:Landroid/widget/Button;

.field private mDetailCurrent:Landroid/widget/TextView;

.field private mDetailCurrentHint:Landroid/widget/TextView;

.field private mDetailHint:Landroid/widget/TextView;

.field private mDetailLogo:Landroid/view/View;

.field private mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

.field private mDetailSize:Landroid/widget/TextView;

.field private mDetailTotal:Landroid/widget/TextView;

.field private mDetailTotalSize:Landroid/widget/TextView;

.field private mDetailUnit:Landroid/widget/TextView;

.field private mDialogBox:Landroid/view/View;

.field private mDialogDomainFinished:Landroid/widget/TextView;

.field private mDialogDomainProgress:Landroid/widget/ProgressBar;

.field private mDialogDomainTitle:Landroid/widget/TextView;

.field private mDialogDomainTotal:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;

.field private final str_fail:I

.field private final str_loading:I

.field private final str_success:I

.field private final str_uploading:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;

    .line 54
    const v0, 0x7f0f0256

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->str_loading:I

    .line 55
    const v0, 0x7f0f0255

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->str_success:I

    .line 56
    const v0, 0x7f0f0257

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->str_fail:I

    .line 57
    const v0, 0x7f0f0245

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->str_uploading:I

    .line 58
    const v0, 0x7f10033d

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->id_detail_again:I

    .line 59
    const v0, 0x7f10033e

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->id_detail_cancel:I

    .line 60
    const v0, 0x7f100332

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->id_detail_back:I

    .line 61
    const v0, 0x7f100342

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->id_dialog_back:I

    .line 62
    const v0, 0x7f100341

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->id_dialog_bare:I

    .line 63
    const v0, 0x7f100348

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->id_dialog_domain_cancel:I

    .line 64
    const v0, 0x7f100343

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->id_dialog_domain:I

    .line 66
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->GONE:I

    .line 67
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->VISIBLE:I

    .line 68
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->INVISIBLE:I

    .line 76
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z

    .line 77
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;

    .line 429
    return-void
.end method

.method private InitReceiver()V
    .locals 3

    .prologue
    .line 265
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, "intFilter":Landroid/content/IntentFilter;
    const-string v1, "Cloud pause upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v1, "Cloud resume upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "Cloud stop upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "Cloud finished upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "Cloud update upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v1, "Cloud progress upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "Cloud send close upload window action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    return-void
.end method

.method private InitView()V
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0252

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_current_hint:Ljava/lang/CharSequence;

    .line 279
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_again:Ljava/lang/CharSequence;

    .line 280
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_b:Ljava/lang/CharSequence;

    .line 281
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_k:Ljava/lang/CharSequence;

    .line 282
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f025b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_m:Ljava/lang/CharSequence;

    .line 284
    const v0, 0x7f100333

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 285
    const v0, 0x7f100331

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailBox:Landroid/view/View;

    .line 286
    const v0, 0x7f100334

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    .line 287
    const v0, 0x7f100335

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailHint:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailHint:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 289
    const v0, 0x7f100336

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrentHint:Landroid/widget/TextView;

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrentHint:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 291
    const v0, 0x7f100337

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrent:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrent:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 293
    const v0, 0x7f100339

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotal:Landroid/widget/TextView;

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotal:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 295
    const v0, 0x7f10033b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailSize:Landroid/widget/TextView;

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailSize:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 297
    const v0, 0x7f10033c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotalSize:Landroid/widget/TextView;

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotalSize:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 299
    const v0, 0x7f10033a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 302
    const v0, 0x7f100338

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 303
    const v0, 0x7f10033d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailAgain:Landroid/widget/Button;

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailAgain:Landroid/widget/Button;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/Button;)V

    .line 305
    const v0, 0x7f10033e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCancel:Landroid/widget/Button;

    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCancel:Landroid/widget/Button;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/Button;)V

    .line 307
    const v0, 0x7f10033f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailLogo:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrentHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_current_hint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailAgain:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_again:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailSize:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotalSize:Landroid/widget/TextView;

    const-string v1, "/0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrent:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotal:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const v0, 0x7f100340

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogBox:Landroid/view/View;

    .line 318
    const v0, 0x7f100344

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTitle:Landroid/widget/TextView;

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 320
    const v0, 0x7f100345

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;

    .line 321
    const v0, 0x7f100346

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainFinished:Landroid/widget/TextView;

    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainFinished:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 323
    const v0, 0x7f100347

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTotal:Landroid/widget/TextView;

    .line 324
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTotal:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 325
    const v0, 0x7f100348

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 327
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0245

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 328
    return-void
.end method

.method private OnSetListener()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailAgain:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v0, 0x7f100332

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v0, 0x7f100342

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v0, 0x7f100341

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v0, 0x7f100348

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    const v0, 0x7f100343

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_m:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailSize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailTotalSize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->resetView(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailAgain:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailLogo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCurrent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainTotal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainFinished:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogDomainProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->char_unit_k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private fullScreen(Z)V
    .locals 3
    .param p1, "full"    # Z

    .prologue
    const/16 v2, 0x200

    .line 416
    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 418
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 419
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 420
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 427
    :goto_0
    return-void

    .line 422
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 423
    .restart local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 424
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 425
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private resetView(Z)V
    .locals 5
    .param p1, "finished"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 398
    if-eqz p1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    const v1, 0x7f0f0255

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setText(I)V

    .line 400
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setResultSuccess()V

    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailAgain:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailLogo:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    const v1, 0x7f0f0256

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setText(I)V

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailProgress:Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/view/CircleProgress;->setResultReset()V

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailAgain:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailLogo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 344
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Cloud back pressed action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 345
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->finish()V

    goto :goto_0

    .line 348
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Cloud send resume upload action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->resetView(Z)V

    goto :goto_0

    .line 353
    :sswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z

    .line 355
    :sswitch_3
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "Cloud send stop upload action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    :cond_0
    :sswitch_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->finish()V

    goto :goto_0

    .line 360
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->fullScreen(Z)V

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogBox:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailBox:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x7f100332 -> :sswitch_3
        0x7f10033d -> :sswitch_1
        0x7f10033e -> :sswitch_2
        0x7f100341 -> :sswitch_4
        0x7f100342 -> :sswitch_0
        0x7f100343 -> :sswitch_5
        0x7f100348 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 249
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->setContentView(I)V

    .line 250
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cloud upload photo from local"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->fullScreen(Z)V

    .line 251
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->InitReceiver()V

    .line 252
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->InitView()V

    .line 253
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Cloud open detail key"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogBox:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailBox:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->OnSetListener()V

    .line 261
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->resetView(Z)V

    .line 262
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDetailBox:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogBox:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;

    .line 394
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 395
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "Cloud send show upload action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mDialogBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->finish()V

    .line 385
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 386
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->isFinished:Z

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Cloud send create upload action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Cloud send hide upload action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Cloud send close download window action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 377
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->finish()V

    goto :goto_0
.end method
