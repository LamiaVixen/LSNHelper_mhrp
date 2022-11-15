script_name('LSN-Helper')
script_description('Los Santos News Helper (LSN-Helper) for special project MyHome RP')
script_author('kyrtion#7310')
script_properties('work-in-pause')
script_version('4.3')

require 'lib.moonloader'

function main()
	while not isSampAvailable() do wait(0) end

	send('������ ������� ���������. ������: '..thisScript().version..'. �������: /lsn_menu')
	print(); print('Script LSN-Helper '..thisScript().version..' loaded - Discord: kyrtion#7310')

	thisScript():unload()
end

function onScriptTerminate(s, q)
	if s == thisScript() then
		if not lockFailed then
			send('���-�� ����� �� ��� � ��������... ���������, ����� ������������� ����� CTRL + R')
		end
		return true
	end
end
