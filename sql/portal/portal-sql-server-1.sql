create table ABContact (
	contactId varchar(100) not null primary key,
	userId varchar(100) not null,
	firstName varchar(100) null,
	middleName varchar(100) null,
	lastName varchar(100) null,
	nickName varchar(100) null,
	emailAddress varchar(100) null,
	homeStreet varchar(100) null,
	homeCity varchar(100) null,
	homeState varchar(100) null,
	homeZip varchar(100) null,
	homeCountry varchar(100) null,
	homePhone varchar(100) null,
	homeFax varchar(100) null,
	homeCell varchar(100) null,
	homePager varchar(100) null,
	homeTollFree varchar(100) null,
	homeEmailAddress varchar(100) null,
	businessCompany varchar(100) null,
	businessStreet varchar(100) null,
	businessCity varchar(100) null,
	businessState varchar(100) null,
	businessZip varchar(100) null,
	businessCountry varchar(100) null,
	businessPhone varchar(100) null,
	businessFax varchar(100) null,
	businessCell varchar(100) null,
	businessPager varchar(100) null,
	businessTollFree varchar(100) null,
	businessEmailAddress varchar(100) null,
	employeeNumber varchar(100) null,
	jobTitle varchar(100) null,
	jobClass varchar(100) null,
	hoursOfOperation varchar(1000) null,
	birthday datetime null,
	timeZoneId varchar(100) null,
	instantMessenger varchar(100) null,
	website varchar(100) null,
	comments varchar(1000) null
);

create table ABContacts_ABLists (
	contactId varchar(100) not null,
	listId varchar(100) not null
);

create table ABList (
	listId varchar(100) not null primary key,
	userId varchar(100) not null,
	name varchar(100) null
);

create table Address (
	addressId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	className varchar(100) null,
	classPK varchar(100) null,
	description varchar(100) null,
	street1 varchar(100) null,
	street2 varchar(100) null,
	city varchar(100) null,
	state varchar(100) null,
	zip varchar(100) null,
	country varchar(100) null,
	phone varchar(100) null,
	fax varchar(100) null,
	cell varchar(100) null,
	priority int
);

create table AdminConfig (
	configId varchar(100) not null primary key,
	companyId varchar(100) not null,
	type_ varchar(100) null,
	name varchar(100) null,
	config text null
);

create table BJEntries_BJTopics (
	entryId varchar(100) not null,
	topicId varchar(100) not null
);

create table BJEntries_BJVerses (
	entryId varchar(100) not null,
	verseId varchar(100) not null
);

create table BJEntry (
	entryId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	content text null,
	versesInput varchar(1000) null
);

create table BJTopic (
	topicId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	description text null
);

create table BJVerse (
	verseId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	name varchar(100) null
);

create table BlogsCategory (
	categoryId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null
);

create table BlogsComments (
	commentsId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	entryId varchar(100) null,
	content text null
);

create table BlogsEntry (
	entryId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	categoryId varchar(100) null,
	title varchar(100) null,
	content text null,
	displayDate datetime null,
	sharing bit,
	commentable bit,
	propsCount int,
	commentsCount int
);

create table BlogsLink (
	linkId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	url varchar(100) null
);

create table BlogsProps (
	propsId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	entryId varchar(100) null,
	quantity int
);

create table BlogsReferer (
	entryId varchar(100) not null,
	url varchar(100) not null,
	type_ varchar(100) not null,
	quantity int,
	primary key (entryId, url, type_)
);

create table BlogsUser (
	userId varchar(100) not null primary key,
	companyId varchar(100) not null,
	entryId varchar(100) not null,
	lastPostDate datetime null
);

create table BookmarksEntry (
	entryId varchar(100) not null primary key,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	folderId varchar(100) null,
	name varchar(100) null,
	url varchar(100) null,
	comments varchar(1000) null,
	visits int
);

create table BookmarksFolder (
	folderId varchar(100) not null primary key,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	parentFolderId varchar(100) null,
	name varchar(100) null
);

create table CalEvent (
	eventId varchar(100) not null primary key,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	title varchar(100) null,
	description varchar(1000) null,
	startDate datetime null,
	endDate datetime null,
	durationHour int,
	durationMinute int,
	allDay bit,
	timeZoneSensitive bit,
	type_ varchar(100) null,
	location varchar(100) null,
	street varchar(100) null,
	city varchar(100) null,
	state varchar(100) null,
	zip varchar(100) null,
	phone varchar(100) null,
	repeating bit,
	recurrence text null,
	remindBy varchar(100) null,
	firstReminder int,
	secondReminder int
);

create table CalTask (
	taskId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	title varchar(100) null,
	description varchar(1000) null,
	noDueDate bit,
	dueDate datetime null,
	priority int,
	status int
);

create table Company (
	companyId varchar(100) not null primary key,
	key_ text null,
	portalURL varchar(100) not null,
	homeURL varchar(100) not null,
	mx varchar(100) not null,
	name varchar(100) not null,
	shortName varchar(100) not null,
	type_ varchar(100) null,
	size_ varchar(100) null,
	street varchar(100) null,
	city varchar(100) null,
	state varchar(100) null,
	zip varchar(100) null,
	phone varchar(100) null,
	fax varchar(100) null,
	emailAddress varchar(100) null,
	authType varchar(100) null,
	autoLogin bit,
	strangers bit
);

create table Counter (
	name varchar(100) not null primary key,
	currentId int
);

create table CyrusUser (
	userId varchar(100) not null primary key,
	password_ varchar(100) not null
);

create table CyrusVirtual (
	emailAddress varchar(100) not null primary key,
	userId varchar(100) not null
);

create table DLFileProfile (
	companyId varchar(100) not null,
	repositoryId varchar(100) not null,
	fileName varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	versionUserId varchar(100) not null,
	versionUserName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	readRoles varchar(100) null,
	writeRoles varchar(100) null,
	description text null,
	version float,
	size_ int,
	primary key (companyId, repositoryId, fileName)
);

create table DLFileRank (
	companyId varchar(100) not null,
	userId varchar(100) not null,
	repositoryId varchar(100) not null,
	fileName varchar(100) not null,
	createDate datetime null,
	primary key (companyId, userId, repositoryId, fileName)
);

create table DLFileVersion (
	companyId varchar(100) not null,
	repositoryId varchar(100) not null,
	fileName varchar(100) not null,
	version float not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	size_ int,
	primary key (companyId, repositoryId, fileName, version)
);

create table DLRepository (
	repositoryId varchar(100) not null primary key,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	readRoles varchar(100) null,
	writeRoles varchar(100) null,
	name varchar(100) null,
	description varchar(1000) null,
	lastPostDate datetime null
);

create table Group_ (
	groupId varchar(100) not null primary key,
	companyId varchar(100) not null,
	parentGroupId varchar(100) null,
	name varchar(100) null,
	layoutIds varchar(100) null
);

create table Groups_Roles (
	groupId varchar(100) not null,
	roleId varchar(100) not null
);

create table IGFolder (
	folderId varchar(100) not null primary key,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	parentFolderId varchar(100) null,
	name varchar(100) null
);

create table IGImage (
	imageId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	folderId varchar(100) null,
	description text null,
	height int,
	width int,
	size_ int,
	primary key (imageId, companyId)
);

create table Image (
	imageId varchar(200) not null primary key,
	text_ text not null
);

create table JournalArticle (
	articleId varchar(100) not null,
	version float not null,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	title varchar(100) null,
	content text null,
	type_ varchar(100) null,
	structureId varchar(100) null,
	templateId varchar(100) null,
	displayDate datetime null,
	expirationDate datetime null,
	approved bit,
	approvedByUserId varchar(100) null,
	approvedByUserName varchar(100) null,
	primary key (articleId, version)
);

create table JournalStructure (
	structureId varchar(100) not null primary key,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	description varchar(1000) null,
	xsd text null
);

create table JournalTemplate (
	templateId varchar(100) not null primary key,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	structureId varchar(100) null,
	name varchar(100) null,
	description varchar(1000) null,
	xsl text null,
	smallImage bit,
	smallImageURL varchar(100) null
);

create table Layer (
	layerId varchar(100) not null,
	skinId varchar(100) not null,
	href varchar(100) null,
	hrefHover varchar(100) null,
	background varchar(100) null,
	foreground varchar(100) null,
	negAlert varchar(100) null,
	posAlert varchar(100) null,
	primary key (layerId, skinId)
);

create table Layout (
	layoutId varchar(100) not null,
	userId varchar(100) not null,
	name varchar(100) null,
	columnOrder varchar(100) null,
	narrow1 varchar(1000) null,
	narrow2 varchar(1000) null,
	wide varchar(1000) null,
	stateMax varchar(1000) null,
	stateMin varchar(1000) null,
	modeEdit varchar(1000) null,
	modeHelp varchar(1000) null,
	primary key (layoutId, userId)
);

create table MailReceipt (
	receiptId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	recipientName varchar(100) null,
	recipientAddress varchar(100) null,
	subject varchar(100) null,
	sentDate datetime null,
	readCount int,
	firstReadDate datetime null,
	lastReadDate datetime null
);

create table MBMessage (
	messageId varchar(100) not null,
	topicId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	threadId varchar(100) null,
	parentMessageId varchar(100) null,
	subject varchar(100) null,
	body text null,
	attachments bit,
	anonymous bit,
	primary key (messageId, topicId)
);

create table MBMessageFlag (
	topicId varchar(100) not null,
	messageId varchar(100) not null,
	userId varchar(100) not null,
	flag varchar(100) null,
	primary key (topicId, messageId, userId)
);

create table MBThread (
	threadId varchar(100) not null primary key,
	rootMessageId varchar(100) null,
	topicId varchar(100) null,
	messageCount int,
	lastPostDate datetime null
);

create table MBTopic (
	topicId varchar(100) not null primary key,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	readRoles varchar(100) null,
	writeRoles varchar(100) null,
	name varchar(100) null,
	description text null,
	lastPostDate datetime null
);

create table NetworkAddress (
	addressId varchar(100) not null primary key,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	url varchar(100) null,
	comments varchar(1000) null,
	content text null,
	status int,
	lastUpdated datetime null,
	notifyBy varchar(100) null,
	interval_ int,
	active_ bit
);

create table Note (
	noteId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	className varchar(100) null,
	classPK varchar(100) null,
	content text null
);

create table PasswordTracker (
	passwordTrackerId varchar(100) not null primary key,
	userId varchar(100) not null,
	createDate datetime not null,
	password_ varchar(100) not null
);

create table PollsChoice (
	choiceId varchar(100) not null,
	questionId varchar(100) not null,
	description varchar(1000) null,
	primary key (choiceId, questionId)
);

create table PollsDisplay (
	layoutId varchar(100) not null,
	userId varchar(100) not null,
	portletId varchar(100) not null,
	questionId varchar(100) not null,
	primary key (layoutId, userId, portletId)
);

create table PollsQuestion (
	questionId varchar(100) not null primary key,
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	title varchar(100) null,
	description varchar(1000) null,
	expirationDate datetime null,
	lastVoteDate datetime null
);

create table PollsVote (
	questionId varchar(100) not null,
	userId varchar(100) not null,
	choiceId varchar(100) not null,
	voteDate datetime null,
	primary key (questionId, userId)
);

create table Portlet (
	portletId varchar(100) not null,
	groupId varchar(100) not null,
	companyId varchar(100) not null,
	defaultPreferences text null,
	narrow bit,
	roles varchar(1000) null,
	active_ bit,
	primary key (portletId, groupId, companyId)
);

create table PortletPreferences (
	portletId varchar(100) not null,
	userId varchar(100) not null,
	layoutId varchar(100) not null,
	preferences text null,
	primary key (portletId, userId, layoutId)
);

create table ProjFirm (
	firmId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	description varchar(1000) null,
	url varchar(100) null
);

create table ProjProject (
	projectId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	firmId varchar(100) null,
	code varchar(100) null,
	name varchar(100) null,
	description varchar(1000) null
);

create table ProjTask (
	taskId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	projectId varchar(100) null,
	name varchar(100) null,
	description varchar(1000) null,
	comments text null,
	estimatedDuration int,
	estimatedEndDate datetime null,
	actualDuration int,
	actualEndDate datetime null,
	status int
);

create table ProjTime (
	timeId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	projectId varchar(100) null,
	taskId varchar(100) null,
	description varchar(1000) null,
	startDate datetime null,
	endDate datetime null
);

create table Release_ (
	releaseId varchar(100) not null primary key,
	createDate datetime null,
	modifiedDate datetime null,
	buildNumber int null,
	buildDate datetime null
);

create table Role_ (
	roleId varchar(100) not null primary key,
	companyId varchar(100) not null,
	name varchar(100) not null
);

create table Skin (
	skinId varchar(100) not null primary key,
	name varchar(100) null,
	imageId varchar(100) null,
	alphaLayerId varchar(100) null,
	alphaSkinId varchar(100) null,
	betaLayerId varchar(100) null,
	betaSkinId varchar(100) null,
	gammaLayerId varchar(100) null,
	gammaSkinId varchar(100) null,
	bgLayerId varchar(100) null,
	bgSkinId varchar(100) null
);

create table ShoppingCart (
	cartId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	itemIds varchar(1000) null,
	couponIds varchar(1000) null,
	altShipping int
);

create table ShoppingCategory (
	categoryId varchar(100) not null primary key,
	companyId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	parentCategoryId varchar(100) null,
	name varchar(100) null
);

create table ShoppingCoupon (
	couponId varchar(100) not null primary key,
	companyId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	name varchar(100) null,
	description varchar(1000) null,
	startDate datetime null,
	endDate datetime null,
	active_ bit,
	limitCategories varchar(1000) null,
	limitSkus varchar(1000) null,
	minOrder float,
	discount float,
	discountType varchar(100) null
);

create table ShoppingItem (
	itemId varchar(100) not null primary key,
	companyId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	categoryId varchar(100) null,
	sku varchar(100) null,
	name varchar(100) null,
	description varchar(1000) null,
	properties varchar(1000) null,
	supplierUserId varchar(100) null,
	fields_ bit,
	fieldsQuantities varchar(1000) null,
	minQuantity int,
	maxQuantity int,
	price float,
	discount float,
	taxable bit,
	shipping float,
	useShippingFormula bit,
	requiresShipping bit,
	stockQuantity int,
	featured_ bit,
	sale_ bit,
	smallImage bit,
	smallImageURL varchar(100) null,
	mediumImage bit,
	mediumImageURL varchar(100) null,
	largeImage bit,
	largeImageURL varchar(100) null
);

create table ShoppingItemField (
	itemFieldId varchar(100) not null primary key,
	itemId varchar(100) null,
	name varchar(100) null,
	values_ varchar(1000) null,
	description varchar(1000) null
);

create table ShoppingItemPrice (
	itemPriceId varchar(100) not null primary key,
	itemId varchar(100) null,
	minQuantity int,
	maxQuantity int,
	price float,
	discount float,
	taxable bit,
	shipping float,
	useShippingFormula bit,
	status int
);

create table ShoppingOrder (
	orderId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	createDate datetime null,
	modifiedDate datetime null,
	tax float,
	shipping float,
	altShipping varchar(100),
	requiresShipping bit,
	couponIds varchar(1000) null,
	couponDiscount float,
	billingFirstName varchar(100) null,
	billingLastName varchar(100) null,
	billingEmailAddress varchar(100) null,
	billingCompany varchar(100) null,
	billingStreet varchar(100) null,
	billingCity varchar(100) null,
	billingState varchar(100) null,
	billingZip varchar(100) null,
	billingCountry varchar(100) null,
	billingPhone varchar(100) null,
	shipToBilling bit,
	shippingFirstName varchar(100) null,
	shippingLastName varchar(100) null,
	shippingEmailAddress varchar(100) null,
	shippingCompany varchar(100) null,
	shippingStreet varchar(100) null,
	shippingCity varchar(100) null,
	shippingState varchar(100) null,
	shippingZip varchar(100) null,
	shippingCountry varchar(100) null,
	shippingPhone varchar(100) null,
	ccName varchar(100) null,
	ccType varchar(100) null,
	ccNumber varchar(100) null,
	ccExpMonth int,
	ccExpYear int,
	ccVerNumber varchar(100) null,
	comments text null,
	ppTxnId varchar(100) null,
	ppPaymentStatus varchar(100) null,
	ppPaymentGross float,
	ppReceiverEmail varchar(100) null,
	ppPayerEmail varchar(100) null,
	sendOrderEmail bit,
	sendShippingEmail bit
);

create table ShoppingOrderItem (
	orderId varchar(100) not null,
	itemId varchar(100) not null,
	sku varchar(100) null,
	name varchar(100) null,
	description varchar(1000) null,
	properties varchar(1000) null,
	supplierUserId varchar(100) null,
	price float,
	quantity int,
	shippedDate datetime null,
	primary key (orderId, itemId)
);

create table User_ (
	userId varchar(100) not null primary key,
	companyId varchar(100) not null,
	createDate datetime null,
	password_ varchar(100) null,
	passwordEncrypted bit,
	passwordExpirationDate datetime null,
	passwordReset bit,
	firstName varchar(100) null,
	middleName varchar(100) null,
	lastName varchar(100) null,
	nickName varchar(100) null,
	male bit,
	birthday datetime null,
	emailAddress varchar(100) null,
	smsId varchar(100) null,
	aimId varchar(100) null,
	icqId varchar(100) null,
	msnId varchar(100) null,
	ymId varchar(100) null,
	favoriteActivity varchar(100) null,
	favoriteBibleVerse varchar(100) null,
	favoriteFood varchar(100) null,
	favoriteMovie varchar(100) null,
	favoriteMusic varchar(100) null,
	languageId varchar(100) null,
	timeZoneId varchar(100) null,
	skinId varchar(100) null,
	dottedSkins bit,
	roundedSkins bit,
	greeting varchar(100) null,
	resolution varchar(100) null,
	refreshRate varchar(100) null,
	layoutIds varchar(100) null,
	comments varchar(1000) null,
	loginDate datetime null,
	loginIP varchar(100) null,
	lastLoginDate datetime null,
	lastLoginIP varchar(100) null,
	failedLoginAttempts int,
	agreedToTermsOfUse bit,
	active_ bit
);

create table Users_Groups (
	userId varchar(100) not null,
	groupId varchar(100) not null
);

create table Users_ProjProjects (
	userId varchar(100) not null,
	projectId varchar(100) not null
);

create table Users_ProjTasks (
	userId varchar(100) not null,
	taskId varchar(100) not null
);

create table Users_Roles (
	userId varchar(100) not null,
	roleId varchar(100) not null
);

create table UserTracker (
	userTrackerId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	modifiedDate datetime null,
	remoteAddr varchar(100) null,
	remoteHost varchar(100) null,
	userAgent varchar(100) null
);

create table UserTrackerPath (
	userTrackerPathId varchar(100) not null primary key,
	userTrackerId varchar(100) not null,
	path varchar(1000) not null,
	pathDate datetime not null
);

create table WikiDisplay (
	layoutId varchar(100) not null,
	userId varchar(100) not null,
	portletId varchar(100) not null,
	nodeId varchar(100) not null,
	showBorders bit,
	primary key (layoutId, userId, portletId)
);

create table WikiNode (
	nodeId varchar(100) not null primary key,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	modifiedDate datetime null,
	readRoles varchar(100) null,
	writeRoles varchar(100) null,
	name varchar(100) null,
	description varchar(1000) null,
	sharing bit,
	lastPostDate datetime null
);

create table WikiPage (
	nodeId varchar(100) not null,
	title varchar(100) not null,
	version float not null,
	companyId varchar(100) not null,
	userId varchar(100) not null,
	userName varchar(100) null,
	createDate datetime null,
	content text null,
	format varchar(100) null,
	head bit,
	primary key (nodeId, title, version)
);

--
-- Global
--

insert into Counter values ('com.liferay.portal.model.Address', 10);
insert into Counter values ('com.liferay.portal.model.Group', 20);
insert into Counter values ('com.liferay.portal.model.Role', 20);
insert into Counter values ('com.liferay.portal.model.User.liferay.com', 10);
insert into Counter values ('com.liferay.portlet.imagegallery.model.IGFolder', 20);
insert into Counter values ('com.liferay.portlet.imagegallery.model.IGImage.liferay.com', 42);
insert into Counter values ('com.liferay.portlet.polls.model.PollsQuestion', 10);
insert into Counter values ('com.liferay.portlet.shopping.model.ShoppingCategory', 20);
insert into Counter values ('com.liferay.portlet.shopping.ejb.ShoppingItem', 40);
insert into Counter values ('com.liferay.portlet.wiki.model.WikiNode', 10);

--
-- Liferay, LLC
--

insert into Company (companyId, portalURL, homeURL, mx, name, shortName, type_, size_, emailAddress, authType, autoLogin, strangers) values ('liferay.com', 'localhost', 'localhost', 'liferay.com', 'Liferay, LLC', 'Liferay', 'biz', '', 'test@liferay.com', 'emailAddress', '1', '1');
update Company set street = '1220 Brea Canyon Rd.', city = 'Diamond Bar', state = 'CA', zip = '91789' where companyId = 'liferay.com';

insert into IGFolder (folderId, groupId, companyId, userId, createDate, modifiedDate, parentFolderId, name) values ('11','3','liferay.com','liferay.com.1',GetDate(),GetDate(),'-1','COMMON');
insert into IGFolder (folderId, groupId, companyId, userId, createDate, modifiedDate, parentFolderId, name) values ('12','3','liferay.com','liferay.com.1',GetDate(),GetDate(),'11','HEADER');
insert into IGFolder (folderId, groupId, companyId, userId, createDate, modifiedDate, parentFolderId, name) values ('13','3','liferay.com','liferay.com.1',GetDate(),GetDate(),'-1','HOME');
insert into IGFolder (folderId, groupId, companyId, userId, createDate, modifiedDate, parentFolderId, name) values ('14','3','liferay.com','liferay.com.1',GetDate(),GetDate(),'-1','COMPANY');
insert into IGFolder (folderId, groupId, companyId, userId, createDate, modifiedDate, parentFolderId, name) values ('15','3','liferay.com','liferay.com.1',GetDate(),GetDate(),'-1','PRODUCTS');
insert into IGFolder (folderId, groupId, companyId, userId, createDate, modifiedDate, parentFolderId, name) values ('16','3','liferay.com','liferay.com.1',GetDate(),GetDate(),'-1','SERVICES');
insert into IGFolder (folderId, groupId, companyId, userId, createDate, modifiedDate, parentFolderId, name) values ('17','3','liferay.com','liferay.com.1',GetDate(),GetDate(),'-1','DOCUMENTATION');
insert into IGFolder (folderId, groupId, companyId, userId, createDate, modifiedDate, parentFolderId, name) values ('18','3','liferay.com','liferay.com.1',GetDate(),GetDate(),'-1','NEWS');
insert into IGFolder (folderId, groupId, companyId, userId, createDate, modifiedDate, parentFolderId, name) values ('19','3','liferay.com','liferay.com.1',GetDate(),GetDate(),'-1','DOWNLOADS');

insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('1','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',49,199,4102);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('2','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,56,283);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('3','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,56,283);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('4','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,57,283);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('5','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,57,283);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('6','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,49,264);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('7','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,49,264);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('8','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,91,404);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('9','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,91,404);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('10','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,31,199);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('11','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,31,199);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('12','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,70,344);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('13','liferay.com','liferay.com.1',GetDate(),GetDate(),'12','',9,70,344);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('14','liferay.com','liferay.com.1',GetDate(),GetDate(),'11','',1,1,49);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('15','liferay.com','liferay.com.1',GetDate(),GetDate(),'11','',14,8,516);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('16','liferay.com','liferay.com.1',GetDate(),GetDate(),'11','',10,10,75);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('17','liferay.com','liferay.com.1',GetDate(),GetDate(),'11','',8,8,64);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('18','liferay.com','liferay.com.1',GetDate(),GetDate(),'11','',9,13,206);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('19','liferay.com','liferay.com.1',GetDate(),GetDate(),'11','',262,1,61);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('20','liferay.com','liferay.com.1',GetDate(),GetDate(),'11','',1,262,834);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('21','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',15,80,533);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('22','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',15,62,442);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('23','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',94,127,6388);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('24','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',94,127,4866);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('25','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',10,70,426);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('26','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',25,90,1755);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('27','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',11,37,293);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('28','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',11,64,441);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('29','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',14,14,138);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('30','liferay.com','liferay.com.1',GetDate(),GetDate(),'13','',14,105,442);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('31','liferay.com','liferay.com.1',GetDate(),GetDate(),'14','company.jpg',100,550,51917);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('35','liferay.com','liferay.com.1',GetDate(),GetDate(),'16','services.jpg',100,550,33075);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('33','liferay.com','liferay.com.1',GetDate(),GetDate(),'15','products.jpg',100,550,36698);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('34','liferay.com','liferay.com.1',GetDate(),GetDate(),'15','products_title.gif',22,106,652);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('32','liferay.com','liferay.com.1',GetDate(),GetDate(),'14','company_title.gif',22,106,658);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('36','liferay.com','liferay.com.1',GetDate(),GetDate(),'16','services_title.gif',22,84,598);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('37','liferay.com','liferay.com.1',GetDate(),GetDate(),'17','documentation.jpg',100,550,33688);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('38','liferay.com','liferay.com.1',GetDate(),GetDate(),'17','documentation_title.gif',22,162,932);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('39','liferay.com','liferay.com.1',GetDate(),GetDate(),'18','news.jpg',100,550,27641);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('40','liferay.com','liferay.com.1',GetDate(),GetDate(),'18','news_title.gif',22,55,463);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('41','liferay.com','liferay.com.1',GetDate(),GetDate(),'19','downloads.jpg',100,550,33579);
insert into IGImage (imageId, companyId, userId, createDate, modifiedDate, folderId, description, height, width, size_) values ('42','liferay.com','liferay.com.1',GetDate(),GetDate(),'19','downloads_title.gif',22,124,786);
