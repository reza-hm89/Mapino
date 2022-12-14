
SET IDENTITY_INSERT [dbo].[MenuGroupTable] ON 

INSERT [dbo].[MenuGroupTable] ([Id], [Name], [Visibility], [LanguageID]) VALUES (7, N'گروه اول', 1, 18)
SET IDENTITY_INSERT [dbo].[MenuGroupTable] OFF

SET IDENTITY_INSERT [dbo].[NewsGroupTable] ON 

INSERT [dbo].[NewsGroupTable] ([Id], [Name], [LanguageID], [Priority], [Visibility]) VALUES (3, N'عمومی', 1, 3, 1)
INSERT [dbo].[NewsGroupTable] ([Id], [Name], [LanguageID], [Priority], [Visibility]) VALUES (4, N'ورزشی', 1, 4, 1)
INSERT [dbo].[NewsGroupTable] ([Id], [Name], [LanguageID], [Priority], [Visibility]) VALUES (5, N'اقتصادی', 1, 5, 1)
SET IDENTITY_INSERT [dbo].[NewsGroupTable] OFF

SET IDENTITY_INSERT [dbo].[UserGroupTable] ON 

INSERT [dbo].[UserGroupTable] ([Id], [Name], [Visibility]) VALUES (1, N'admin', 1)
INSERT [dbo].[UserGroupTable] ([Id], [Name], [Visibility]) VALUES (4, N'users', 1)
SET IDENTITY_INSERT [dbo].[UserGroupTable] OFF
SET IDENTITY_INSERT [dbo].[UserTable] ON 

INSERT [dbo].[UserTable] ([Id], [Name], [Family], [Address], [Tel], [ImageUrl], [Birthday], [Gender], [ZipCode], [City], [Website], [Email], [Twitter], [Facebook], [GooglePlus], [Github], [Linkedin], [Skype], [Username], [Password], [LoginDate], [LogoutDate], [RegDate], [Description], [IsDelete], [Ip], [EmailConfirmed], [AccessFailedCount], [MobileConfirmed], [ChangePassRequestCode], [ChangePassRequestDate]) VALUES (1, N'admin', N'admin', N'', N'', N'', NULL, 1, N'', N'', N'', N'reza_hm2008@yahoo.com', N'', N'', N'', N'', N'', N'', N'1', N'C4CA4238A0B923820DCC509A6F75849B', CAST(0x0000A51900DEAAE3 AS DateTime), CAST(0x0000A51900DEAD2C AS DateTime), CAST(0x0000A4E0014A792C AS DateTime), N'', 0, NULL, 1, NULL, NULL, NULL, CAST(0x0000A51900E06C11 AS DateTime))

SET IDENTITY_INSERT [dbo].[UserTable] OFF
SET IDENTITY_INSERT [dbo].[ModuleTable] ON 

INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (1, N'سفارشات aac', N'<li id="AacOrderMenu">
                        <a href="#"><i class="clip-pencil"></i>
                            <span class="title">سفارشات</span>
                            <span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (3, N'نمایندگی ', N'  <li>                         <a href="javascript:void(0)"><i class="clip-users-3"></i>                             <span class="title">نمایندگی </span><i class="icon-arrow"></i>                             <span class="selected"></span>                         </a>                         <ul class="sub-menu" style="display: none;">                             <li id="AgentMenu">                                 <a href="#">                                     <span class="title">ثبت نمایندگی</span>                                 </a>                             </li>                             <li id="AgentListMenu">                                 <a href="#">                                     <span class="title">لیست نمایندگان</span>                                 </a>                             </li>                          </ul>                     </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (4, N'آلبوم ', N'   <li>
                        <a href="javascript:void(0)"><i class="clip-pictures"></i>
                            <span class="title">آلبوم </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="AlbumMenu">
                                <a href="#">
                                    <span class="title">ثبت آلبوم</span>
                                </a>
                            </li>
                            <li id="AlbumListMenu">
                                <a href="#">
                                    <span class="title">لیست آلبوم</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (5, N'مشتری ', N'  <li>
                        <a href="javascript:void(0)"><i class="clip-users-2"></i>
                            <span class="title">مشتری </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="CustomerMenu">
                                <a href="#">
                                    <span class="title">ثبت مشتری</span>
                                </a>
                            </li>
                            <li id="CustomerListMenu">
                                <a href="#">
                                    <span class="title">لیست مشتریان</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (6, N'فاکتور فروش', N'  <li>
                        <a href="javascript:void(0)"><i class="clip-paypal"></i>
                            <span class="title">بخش فاکتور فروش </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="FactorListMenu">
                                <a href="#">
                                    <span class="title">لیست فاکتور</span>
                                </a>
                            </li>
                            <li id="FactorStatusListMenu">
                                <a href="#">
                                    <span class="title">وضعیت های فاکتور</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (7, N'مدیریت فایل', N' <li id="FileManagementMenu">
                        <a href="#"><i class="clip-file-2"></i>
                            <span class="title">مدیریت فایل</span>
                            <span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (8, N'محصولات گرندی', N'  <li>
                        <a href="javascript:void(0)"><i class="clip-cart"></i>
                            <span class="title">محصولات گرندی</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="GrandeeProductMenu">
                                <a href="#">
                                    <span class="title">ثبت محصول</span>
                                </a>
                            </li>
                            <li id="GrandeeProductListMenu">
                                <a href="#">
                                    <span class="title">لیست محصولات</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (9, N'زبان', N'
                    <li>
                        <a href="javascript:void(0)"><i class="clip-earth"></i>
                            <span class="title">زبان </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="LanguageMenu">
                                <a href="#">
                                    <span class="title">ثبت زبان</span>
                                </a>
                            </li>
                            <li id="LanguageListMenu">
                                <a href="#">
                                    <span class="title">لیست زبان</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (10, N'پیوند ها', N'    <li>
                        <a href="javascript:void(0)"><i class="clip-link-2"></i>
                            <span class="title">پیوند </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="LinkMenu">
                                <a href="#">
                                    <span class="title">ثبت پیوند</span>
                                </a>
                            </li>
                            <li id="LinkListMenu">
                                <a href="#">
                                    <span class="title">لیست پیوند</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (11, N'منو ساز', N'   <li>
                        <a href="javascript:void(0)"><i class="clip-menu-4"></i>
                            <span class="title">منو ساز </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="MenuBiulderMenu">
                                <a href="#">
                                    <span class="title">ثبت منو</span>
                                </a>
                            </li>
                            <li id="MenuBiulderListMenu">
                                <a href="#">
                                    <span class="title">لیست منو</span>
                                </a>
                            </li>
                            <li id="MenuGroupListMenu">
                                <a href="#">
                                    <span class="title">گروه های منو</span>
                                </a>
                            </li>
                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (12, N'پیام های کاربران سایت', N' <li id="MessageListMenu">
                        <a href="#"><i class="clip-paperplane"></i>
                            <span class="title">پیام های کاربران</span>
                            <span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (13, N'ماژول های پنل', N' <li>
                        <a href="javascript:void(0)"><i class="clip-archive"></i>
                            <span class="title">ماژول های پنل </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="ModuleMenu">
                                <a href="#">
                                    <span class="title">ثبت ماژول</span>
                                </a>
                            </li>
                            <li id="ModuleListMenu">
                                <a href="#">
                                    <span class="title">لیست ماژول</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (14, N'بخش خبری', N'
                    <li>
                        <a href="javascript:void(0)"><i class="clip-note"></i>
                            <span class="title">بخش خبری</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="NewsMenu">
                                <a href="#">
                                    <span class="title">ثبت خبر</span>
                                </a>
                            </li>
                            <li id="NewsListMenu">
                                <a href="#">
                                    <span class="title">لیست خبر</span>
                                </a>
                            </li>

                            <li id="NewsGroupListMenu">
                                <a href="#">
                                    <span class="title">گروه های خبری</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (15, N'تعرفه', N' <li>
                        <a href="javascript:void(0)"><i class="clip-banknote"></i>
                            <span class="title">تعرفه</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="PackageMenu">
                                <a href="#">
                                    <span class="title">ثبت تعرفه</span>
                                </a>
                            </li>
                            <li id="PackageListMenu">
                                <a href="#">
                                    <span class="title">لیست تعرفه</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (16, N'صفحه ساز', N' <li>
                        <a href="javascript:void(0)"><i class="clip-archive"></i>
                            <span class="title">صفحه ساز </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="PageMenu">
                                <a href="#">
                                    <span class="title">ثبت صفحه</span>
                                </a>
                            </li>
                            <li id="PageListMenu">
                                <a href="#">
                                    <span class="title">لیست صفحه</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (17, N'اماکن', N' <li>
                        <a href="javascript:void(0)"><i class="clip-location"></i>
                            <span class="title">اماکن</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="PlaceMenu">
                                <a href="#">
                                    <span class="title">ثبت مکان</span>
                                </a>
                            </li>
                            <li id="PlaceListMenu">
                                <a href="#">
                                    <span class="title">لیست اماکن</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (18, N'گروه بندی محصولات', N' <li id="ProductGroupMenu">
                        <a href="#"><i class="clip-stack"></i>
                            <span class="title">گروه بندی محصولات</span>
                            <span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (19, N'استان/شهر', N'  <li>
                        <a href="javascript:void(0)"><i class="clip-earth"></i>
                            <span class="title">استان/شهر</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="RegionMenu">
                                <a href="#">
                                    <span class="title">ثبت استان/شهر</span>
                                </a>
                            </li>
                            <li id="RegionListMenu">
                                <a href="#">
                                    <span class="title">لیست استان/شهر</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (20, N'اسلاید شو', N'    <li>
                        <a href="javascript:void(0)"><i class="clip-picassa"></i>
                            <span class="title">اسلاید شو</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="SlideMenu">
                                <a href="#">
                                    <span class="title">ثبت اسلاید</span>
                                </a>
                            </li>
                            <li id="SlideListMenu">
                                <a href="#">
                                    <span class="title">لیست اسلاید</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (21, N'محصولات تمشک', N'    <li>
                        <a href="javascript:void(0)"><i class="clip-cart"></i>
                            <span class="title">محصولات تمشک</span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="TameshkProductMenu">
                                <a href="#">
                                    <span class="title">ثبت محصول</span>
                                </a>
                            </li>
                            <li id="TameshkProductListMenu">
                                <a href="#">
                                    <span class="title">لیست محصولات</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (22, N'بخش کاربری', N'      <li>
                        <a href="javascript:void(0)"><i class="clip-user-5"></i>
                            <span class="title">بخش کاربری </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="UserMenu">
                                <a href="#">
                                    <span class="title">ثبت کاربر</span>
                                </a>
                            </li>
                            <li id="UserListMenu">
                                <a href="#">
                                    <span class="title">لیست کاربران</span>
                                </a>
                            </li>
                            <li id="UserGroupMenu">
                                <a href="#">
                                    <span class="title">ثبت گروه کاربری</span>
                                </a>
                            </li>
                            <li id="UserGroupListMenu">
                                <a href="#">
                                    <span class="title">گروه های کاربری</span>
                                </a>
                            </li>
                            <li id="PermissionMenu">
                                <a href="#">
                                    <span class="title">سطح دسترسی</span>
                                </a>
                            </li>
                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (23, N'کاربری سایت ', N'      <li>
                        <a href="javascript:void(0)"><i class="clip-user-2"></i>
                            <span class="title">کاربری سایت </span><i class="icon-arrow"></i>
                            <span class="selected"></span>
                        </a>
                        <ul class="sub-menu" style="display: none;">
                            <li id="WebUserMenu">
                                <a href="#">
                                    <span class="title">ثبت کاربر سایت</span>
                                </a>
                            </li>
                            <li id="WebUserListMenu">
                                <a href="#">
                                    <span class="title">لیست کاربران سایت</span>
                                </a>
                            </li>

                        </ul>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (24, N'تنظیمات سایت', N' <li id="WebsiteSettingMenu">
                    <a href="#">
                        <i class="clip-settings"></i>
                        <span class="title">تنظیمات سایت</span>
                        <span class="selected"></span>
                    </a>
                </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (25, N'داشبورد', N' <li id="DashboardMenu">
                        <a href="#"><i class="clip-stats"></i>
                            <span class="title">داشبورد</span><span class="selected"></span>
                        </a>
                    </li>', N'')
INSERT [dbo].[ModuleTable] ([Id], [Name], [MenuContent], [MenuScript]) VALUES (26, N'نقشه گوگل', N' <li >
                        <a href="GoogleMap.aspx"><i class="clip-map"></i>
                            <span class="title">نقشه گوگل</span><span class="selected"></span>
                        </a>
                    </li>', N'')
SET IDENTITY_INSERT [dbo].[ModuleTable] OFF
SET IDENTITY_INSERT [dbo].[PermissionTable] ON 

INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (176, 1, NULL, 1, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (177, 1, NULL, 3, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (178, 1, NULL, 4, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (179, 1, NULL, 5, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (180, 1, NULL, 6, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (181, 1, NULL, 7, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (182, 1, NULL, 8, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (183, 1, NULL, 9, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (184, 1, NULL, 10, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (185, 1, NULL, 11, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (186, 1, NULL, 12, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (187, 1, NULL, 13, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (188, 1, NULL, 14, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (189, 1, NULL, 15, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (190, 1, NULL, 16, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (191, 1, NULL, 17, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (192, 1, NULL, 18, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (193, 1, NULL, 19, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (194, 1, NULL, 20, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (195, 1, NULL, 21, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (196, 1, NULL, 22, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (197, 1, NULL, 23, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (198, 1, NULL, 24, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (199, 1, NULL, 25, 1, 1, 1, 1)
INSERT [dbo].[PermissionTable] ([Id], [UserID], [GroupID], [ModuleID], [Show], [Insert], [Update], [Delete]) VALUES (200, 1, NULL, 26, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[PermissionTable] OFF
SET IDENTITY_INSERT [dbo].[UserGroupAccessTable] ON 

INSERT [dbo].[UserGroupAccessTable] ([ID], [UserID], [GroupID]) VALUES (1, 1, 1)

SET IDENTITY_INSERT [dbo].[UserGroupAccessTable] OFF
SET IDENTITY_INSERT [dbo].[ProductGroupTable1] ON 

INSERT [dbo].[ProductGroupTable1] ([Id], [Name], [Link], [OpenLink], [Priority], [Visibility], [LanguageID]) VALUES (2, N'گروه 01', N'', N'_self', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[ProductGroupTable1] OFF
SET IDENTITY_INSERT [dbo].[ProductGroupTable2] ON 

INSERT [dbo].[ProductGroupTable2] ([Id], [Name], [Parent], [Link], [OpenLink], [Priority], [Visibility], [LanguageID], [GroupID1]) VALUES (2, N'گروه سطح 2', -1, N'', N'_self', 2, 1, 1, 2)
SET IDENTITY_INSERT [dbo].[ProductGroupTable2] OFF

SET IDENTITY_INSERT [dbo].[LanguageTable] ON 

INSERT [dbo].[LanguageTable] ([Id], [Name], [Icon], [Link], [OpenLink], [Visibility]) VALUES (18, N'فارسی', N'10b12611-f883-4e6a-82c4-f4fe4e47c76bfe34070a35ea6862f67148980c8f402d6b82f9ae.jpg', N'', N'_self', 1)
INSERT [dbo].[LanguageTable] ([Id], [Name], [Icon], [Link], [OpenLink], [Visibility]) VALUES (19, N'انگلیسی', N'6c78da6a-c106-443b-a52b-6b6873fe76fden.jpg', N'', N'_self', 1)
SET IDENTITY_INSERT [dbo].[LanguageTable] OFF
SET IDENTITY_INSERT [dbo].[RegionTable] ON 

INSERT [dbo].[RegionTable] ([Id], [Name], [Parent], [Position], [Priority], [Visibility], [LanguageID]) VALUES (9, N'خراسان شمالی', -1, N'1,1', 9, 1, 18)
SET IDENTITY_INSERT [dbo].[RegionTable] OFF

SET IDENTITY_INSERT [dbo].[WebsiteSettingTable] ON 

INSERT [dbo].[WebsiteSettingTable] ([Id], [Address1], [Address2], [Address3], [Tel1], [Tel2], [Tel3], [Mobile1], [Mobile2], [Mobile3], [Email1], [Email2], [Email3], [Facebook], [Twitter], [GooglePlus], [Instagram], [Linkedin], [Github], [Skype], [Viber], [HeaderImage1], [HeaderImage2], [Logo1], [Logo2], [FooterImage1], [FooterImage2], [HeaderTitle], [FooterDescription], [CopyRightText], [CopyRightYear], [TameshkSibcheStatus], [LanguageID]) VALUES (3, N'1', N'2', N'3', N'4', N'5', N'6', N'7', N'8', N'9', N'10', N'11', N'12', N'13', N'14', N'15', N'16', N'17', N'18', N'19', N'20', N'blogPost-clouddatabase.jpg', N'clockReferences.jpg', N'cloud-computing.png', N'cloud-computing-icon.png', N'privacy.jpg', N'hacker.jpg', N'21', N'22', N'23', N'24', NULL, 18)
SET IDENTITY_INSERT [dbo].[WebsiteSettingTable] OFF
